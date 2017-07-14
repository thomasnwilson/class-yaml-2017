
#This next line is run when the whole file is executed, but not when knitr calls individual chunks.
rm(list=ls(all=TRUE)) #Clear the memory for any variables set from any previous runs.

# ---- load-sources ------------------------------------------------------------


# ---- load-packages -----------------------------------------------------------
library(magrittr                , quietly=TRUE)
library(glue                    , quietly=TRUE)

requireNamespace("data.tree"                  )
requireNamespace("collapsibleTree"            )
requireNamespace("dplyr"                      )
requireNamespace("yaml"                       )
requireNamespace("tibble"                     )
requireNamespace("checkmate"                  )
requireNamespace("OuhscMunge"                 )   # devtools::install_github("OuhscBbmc/OuhscMunge") #, ref="dev")

# ---- declare-globals ---------------------------------------------------------
path_input     <- "./data-public/raw/miechv-3-outcome-measure.yml"
variables      <- c("measure_id", "description", "driver_primary", "numerator", "denominator", "definition", "note")

# ---- load-data ---------------------------------------------------------------
l <- yaml::yaml.load_file(path_input)

# ---- tweak-data --------------------------------------------------------------
dt <- data.tree::as.Node(l)
# ds <- data.tree:::as.data.frame.Node(dt, row.names=T, optional=F, variables)
# ds <- data.tree:::ToDataFrameTable(dt, "measure_id", variables)
ds <- data.tree:::ToDataFrameTypeCol(dt, variables)

# ---- tree-static --------------------------------------------------------------
data.tree:::print.Node(dt, limit=NULL)
print(dt, "measure_id", "description", "driver_primary", "numerator", "denominator", "definition", "note", pruneMethod = "simple")

# print(dt)

# ---- table-static ------------------------------------------------------------
ds %>%
  knitr::kable(
    col.names = gsub("_", " ", colnames(.))
  )


# ---- list-static -------------------------------------------------------------
display_attribute <- function( a, name, prefix=glue("**{name}**: ")) {
  # browser()
  if( !is.null(a[[name]]) ) {
    glue("{prefix}{value}\n", value=a[[name]])
  } else {
    ""
  }
}
display_measure <- function( x ) {
  x %>%
    glue_data(
      "\nMeasure #{.$measure_id} (PD: {.$driver_primary})\n------------------------",
      {.$description},
      {display_attribute(., "numerator")},
      {display_attribute(., "denominator")},
      {display_attribute(., "note")},
      "\n\n",
      .sep = "\n\n"
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
