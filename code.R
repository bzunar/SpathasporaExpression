library(devtools)
library(usethis)
devtools::load_all()


usethis::use_vignette(name = "analysis")

library(BiocStyle)

rmarkdown::render(input = file.path("D:", "RStudio", "spathasporaExpression",
                                    "vignettes", "analysis.Rmd"),
                  output_file = file.path("D:", "RStudio", "spathasporaExpression",
                                          "vignettes", "analysis.html"))

################################################################################

use_roxygen_md()
devtools::document()
use_readme_md()

use_git()
use_github()


names(eList)
use_data(Sp)

readr::read_tsv()
library(roxygen2)

object.size(ndf) %>% format(units = "Mb")

concatenateOligos(49766)

use_data(ref)

rappdirs::user_data_dir()
site_data_dir()

install.packages("rappdirs")

top20 <- top_final %>%
    filter(kogGroup == "METABOLISM") %>%
    head(30)

a <- Sp[as.character(top20$SPOT_ID)] %>% exprs()

Sp[as.character(top20$SPOT_ID)] %>%
    exprs() %>%
    Biostrings::as.data.frame() %>%
    tibble::rownames_to_column() %>%
    tidyr::gather(key = sample, value = value, -rowname) %>%
    left_join(carbon) %>%
    mutate(rowname = as.numeric(rowname)) %>%
    left_join(top20, by = c("rowname" = "SPOT_ID")) %>%
    mutate(kogdefline = str_replace(kogdefline, pattern = "\\+", replacement = "a")) %>%
    ggplot(aes(x = carbon, y = value, colour = carbon)) +
    geom_boxplot() +
    geom_point() +
    facet_wrap(~ kogdefline)

Sp[as.character(c(42696, 58740, 55577, 41559, 54375, 47756))] %>%
    exprs() %>%
    Biostrings::as.data.frame() %>%
    tibble::rownames_to_column() %>%
    tidyr::gather(key = sample, value = value, -rowname) %>%
    left_join(carbon) %>%
    mutate(rowname = as.numeric(rowname)) %>%
    left_join(top_final, by = c("rowname" = "SPOT_ID")) %>%
    mutate(kogdefline = str_replace(kogdefline, pattern = "\\+", replacement = "a")) %>%
    ggplot(aes(x = carbon, y = value, colour = carbon)) +
    geom_boxplot() +
    geom_point() +
    facet_wrap(~ rowname, nrow = 1)

cOligos(47756)[,2] %>% as.character()




