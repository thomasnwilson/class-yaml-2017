
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

# ---- tree-static --------------------------------------------------------------
data.tree:::print.Node(dt, limit=NULL)
print(dt, "measure_id", "title", "description", "driver_primary", "numerator", "denominator", "definition", "note", "status", pruneMethod = "simple")

# print(dt)

# ---- list-static -------------------------------------------------------------

display_attribute <- function( a, name, prefix=glue("* **{name}**: "), ending="\n") {
  # browser()
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
      "### {.$title}\n",
      "{format_symbols(.$description)}\n\n",
      "* **measure** #{.$measure_id}; **pd**: {.$driver_primary}\n",
      {display_attribute(., "numerator")},
      {display_attribute(., "denominator")},
      {display_attribute(., "definition")},
      {display_attribute(., "note")},
      "\n\n"#,
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
    equation = dplyr::case_when(
      !is.na(.$definition)    ~ definition,
      !is.na(.$numerator)     ~ as.character(glue("**numerator**: {.$numerator}<br/>**denominator**: {.$denominator}")),
      TRUE                    ~ NA_character_
    )
  ) %>%
  # colnames() %>% dput()
  dplyr::select(
    id              = measure_id,
    title,
    description,
    equation,
    driver_primary,
    # numerator,
    # denominator,
    # definition,
    note
  ) %>%
  dplyr::mutate_at(
    c("title", "description", "driver_primary", "equation", "note"),
    format_symbols
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
# collapsibleTree::collapsibleTree(
#   ds,
#   hierarchy = c("objective_name")
# )

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
