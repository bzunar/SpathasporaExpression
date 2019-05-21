#' Concatenate Oligo Sequences
#'
#' Find (and concatenate) oligo sequences that belong to a proteinID of interest.
#'
#' @param id a proteinId of interest (character vector of length 1)
#' @param df data frame that maps proteinIDs to oligo sequences
#' @param id_column `df` column with proteinIDs (character vector of length 1)
#' @param oligo_seq `df` column with oligo sequences (character vector of length 1)
#'
#' @return The function returns a tibble with two columns: proteinIDs and sequence
#' of concatenated oligos that are associated with the proteinID
#'
#' @note The function accepts as an input only one proteinID. For more than one
#' proteinIDs, combine with purrr::map_dfr

#' @examples
#' cOligos(49766)
#' cOligos("43120")
#'
#' # more than one proteinIDs
#' c("49766", "59238") %>% purrr::map_dfr(cOligos)
#'
#' @importFrom dplyr filter select pull mutate
#' @importFrom magrittr %>% %T>%
#'
#' @export

cOligos <- function(id,
                    df = ref,
                    id_column = "ProteinID",
                    oligo_seq = "PROBE_SEQUENCE") {
    df %>%
        dplyr::filter(.data[[id_column]] == id) %T>%
        {dplyr::select(., .data[[oligo_seq]]) %>%
                dplyr::pull() %>%
                paste(collapse = "") ->> y} %>%
        dplyr::mutate(sequence = y) %>%
        dplyr::select(.data[[id_column]], sequence) %>%
        .[1,]
}



