#This next line is run when the whole file is executed, but not when knitr calls individual chunks.
rm(list=ls(all=TRUE)) #Clear the memory for any variables set from any previous runs.

# ---- load-sources ------------------------------------------------------------


# ---- load-packages -----------------------------------------------------------
library(magrittr                , quietly=TRUE)
library(glue                    , quietly=TRUE)

requireNamespace("data.tree"                  )
requireNamespace("collapsibleTree"            )
requireNamespace("dplyr"                      )
requireNamespace("purrr"                      )
requireNamespace("tibble"                     )
requireNamespace("yaml"                       )
requireNamespace("checkmate"                  )
requireNamespace("kableExtra"                 )
requireNamespace("OuhscMunge"                 )   # devtools::install_github("OuhscBbmc/OuhscMunge") #, ref="dev")

# ---- declare-globals ---------------------------------------------------------
path_input     <- "./data-public/raw/miechv-3-outcome-measure.yml"
variables      <- c(
  "measure_id", "title", "description",
  "driver_primary",
  "numerator", "denominator", "definition",
  "note", "status"
)

format_symbols <- function( x ) {
  x <- dplyr::if_else(is.na(x), "--", x)
  x <- gsub("\\bN\\b", "*N*", x)

  return( x )
}

# ---- load-data ---------------------------------------------------------------
l <- yaml::yaml.load_file(path_input)

# ---- tweak-data --------------------------------------------------------------
dt <- data.tree::as.Node(l)
# ds <- data.tree:::as.data.frame.Node(dt, row.names=T, optional=F, variables)
# ds <- data.tree:::ToDataFrameTable(dt, "measure_id", variables)
ds <- data.tree:::ToDataFrameTypeCol(dt, variables)

# ---- list-static -------------------------------------------------------------
display_attribute <- function( a, name, prefix=glue("* **{name}**: "), ending="\n") {
  if( !is.null(a[[name]]) ) {
    value <- format_symbols(a[[name]])
    glue("{prefix}{value}{ending}", value=value)
  } else {
    character(1)
  }
}
display_measure <- function( x ) {
  x %>%
    glue_data(
      "## {.$title}\n",
      "{format_symbols(.$description)}\n\n",
      "* **measure** #{.$measure_id}; **pd**: {.$driver_primary}\n",
      {display_attribute(., "numerator")},
      {display_attribute(., "denominator")},
      {display_attribute(., "definition")},
      {display_attribute(., "note")},
      "\n\n"
      # .sep = "\n"
    )
}

l %>%
  purrr::map_chr(display_measure) %>%
  cat(sep="")


# ---- table-static-planned ------------------------------------------------------------
format_static_table <- function( d ) {
  d %>%
    dplyr::select(-level_1, -level_2) %>%
    dplyr::mutate(
      title         = gsub("_", "<br/>", title),
      title         = gsub("appropriateness", "appropri-<br/>ateness", title)
    ) %>%
    dplyr::mutate(
      title_driver  = as.character(glue("{.$title}<br/>({.$driver_primary})")),
      equation = dplyr::case_when(
        !is.na(.$definition)    ~ definition,
        !is.na(.$numerator)     ~ as.character(glue("**numerator**: {.$numerator}<br/>**denominator**: {.$denominator}")),
        TRUE                    ~ NA_character_
      )
    ) %>%
    dplyr::select(
      -numerator, -denominator, -definition
    ) %>%
    dplyr::mutate_at(
      c("title_driver", "description", "driver_primary", "equation", "note"),
      format_symbols
    ) %>%
    dplyr::select(
      id                      = measure_id,
      `title<br/>(driver)`    = title_driver,
      description,
      equation,
      note
    ) %>%
    knitr::kable(
      col.names = gsub("_", " ", colnames(.)),
      format    = "html",
      escape    = F
    ) %>%
    kableExtra::kable_styling(
      bootstrap_options = c("striped", "hover", "condensed", "responsive"),
      full_width        = F,
      position          = "left"
    )
}

ds %>%
  tibble::as_tibble() %>%
  dplyr::filter(status == "planned") %>%
  dplyr::select(-status) %>%
  format_static_table()


# ---- table-static-proposed ---------------------------------------------------
ds %>%
  tibble::as_tibble() %>%
  dplyr::filter(status == "proposed") %>%
  dplyr::select(-status) %>%
  format_static_table()

# ---- tree-dynamic --------------------------------------------------------------
ds_tree <- ds %>%
  dplyr::select(
    # navigation nodes
    driver_primary,
    measure_id,
    title,

    # terminal nodes
    definition,
    numerator,
    denominator
  ) %>%
  dplyr::mutate(
    parent_measure_id = as.integer(gsub("^(\\d{1,3})\\w*$", "\\1", measure_id))
  ) %>%
  tidyr::gather(key, value, -driver_primary, -parent_measure_id, -measure_id, -title) %>%
  dplyr::mutate(
    title         = glue("#{.$measure_id}: {.$title}"),
    key_value     = glue("**{.$key}**: {.$value}")#,
    # key_value     = stringi::stri_wrap(key_value, simplify = T)
    # key_value     = substr(key_value, 1, 80)
    # key_value     = purrr::map_chr(key_value, function(x)  paste(stringi::stri_wrap(x, 10), collapse="-"))
  ) %>%
  dplyr::select(-key, -value, -measure_id)

ds_tree %>%
  collapsibleTree::collapsibleTree(
    c("driver_primary",  "title", "key_value"), #"parent_measure_id",
    linkLength = 100
  )


# ---- tree-static --------------------------------------------------------------
data.tree:::print.Node(dt, limit=NULL)
print(dt, "measure_id", "title", "description", "driver_primary", "numerator", "denominator", "definition", "note", "status", pruneMethod = "simple")

# print(dt)

# ---- verify-values -----------------------------------------------------------
# checkmate::assert_integer(ds$row_id           , lower=0  , any.missing=FALSE, unique=FALSE)
# checkmate::assert_integer(ds$referral_id      , lower=1  , any.missing=TRUE , unique=FALSE)

# sapply(ds, function(x) max(nchar(x), na.rm=T))

# Possibly good explanations:
# - http://www.yaml.org/spec/1.2/spec.html

# In the future, explore diagrams like
# - collapsibleTree
#   - https://adeelk93.github.io/collapsibleTree/
# - d3Tree
#   - https://github.com/metrumresearchgroup/d3Tree
#   - https://bl.ocks.org/mbostock/4339083
