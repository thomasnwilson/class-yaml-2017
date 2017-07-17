
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
  "note"
)

# ---- load-data ---------------------------------------------------------------
l <- yaml::yaml.load_file(path_input)

# ---- tweak-data --------------------------------------------------------------
dt <- data.tree::as.Node(l)
# ds <- data.tree:::as.data.frame.Node(dt, row.names=T, optional=F, variables)
# ds <- data.tree:::ToDataFrameTable(dt, "measure_id", variables)
ds <- data.tree:::ToDataFrameTypeCol(dt, variables)

# ---- tree-static --------------------------------------------------------------
data.tree:::print.Node(dt, limit=NULL)
print(dt, "measure_id", "title", "description", "driver_primary", "numerator", "denominator", "definition", "note", pruneMethod = "simple")

# print(dt)

# ---- table-static ------------------------------------------------------------
ds %>%
  tibble::as_tibble() %>%
  dplyr::select(-level_1, -level_2) %>%
  dplyr::mutate(
    title         = gsub("_", " ", title)
  ) %>%
  knitr::kable(
    col.names = gsub("_", " ", colnames(.)),
    format    = "html"
  ) %>%
  kableExtra::kable_styling(
    bootstrap_options = c("striped", "hover", "condensed", "responsive"),
    full_width        = F,
    position          = "left"
  )


# ---- list-static -------------------------------------------------------------
format_symbols <- function( x ) {
  x <- gsub("\\bN\\b", "*N*", x)

  return( x )
}
display_attribute <- function( a, name, prefix=glue("* **{name}**: ")) {
  # browser()
  if( !is.null(a[[name]]) ) {
    value <- format_symbols(a[[name]])
    glue("{prefix}{value}\n", value=value)
  } else {
    character(1)
  }
}
display_measure <- function( x ) {
  x %>%
    glue_data(
      "### {.$title}",
      "{format_symbols(.$description)}\n",
      "* **measure** #{.$measure_id}; **pd**: {.$driver_primary}",
      {display_attribute(., "numerator")},
      {display_attribute(., "denominator")},
      {display_attribute(., "note")},
      "\n\n",
      .sep = "\n"
    )

}

l %>%
  purrr::map_chr(display_measure) %>%
  cat(sep="")


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
