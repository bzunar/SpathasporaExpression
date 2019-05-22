#' A Dataframe with Oligo (Probe) Sequences and ProteinIDs to Which the Oligos Map
#'
#' @source Gene Expression Omnibus.
#' \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GPL11079}
#'
#' @format A data frame with columns:
#' \describe{
#' \item{ProteinID}{*Spathaspora passalidarum* NRRL Y-27907 protein ID number for
#' version 1 of the genome assembly, as available on the genome portal
#' \url{http://www.jgi.doe.gov/spathaspora/}}
#' \item{PROBE_ID}{ID of the oligo (probe) that is present on the microarray}
#' \item{PROBE_SEQUENCE}{Sequence of the oligo (probe)}
#' }
#'
#' @examples
#' \dontrun{
#' ref
#' }
"ref"

#' ExpressionSet: *Spathaspora passalidarum* Grown on Glucose and Xylose
#'
#' @source Gene Expression Omnibus.
#' \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE24853}
#'
#' Wohlbach DJ, Kuo A, Sato TK, Potts KM et al. Comparative genomics
#' of xylose-fermenting fungi for enhanced biofuel production. Proc Natl Acad
#' Sci U S A 2011 Aug 9;108(32):13212-7. PMID: 21788494
#' \url{https://doi.org/10.1073/pnas.1103039108}
#'
#' @format An ExpressionSet: Expression profiling by genome tiling array.
#'
#' Investigation of whole genome gene expression level changes in
#' *Spathaspora passalidarum* NRRL Y-27907 grown aerobically in xylose, compared
#' to the same strain grown aerobically in glucose.
#'
#' A six array study using total RNA recovered from three separate
#' cultures of Spathaspora passalidarum NRRL Y-27907 grown in glucose and three
#' separate cultures of Spathaspora passalidarum NRRL Y-27907 grown in xylose.
#' Each array measures the expression level of 362,487 probes (average probe
#' length 54.5 +/- 4.0 nt) tiled across the Spathaspora passalidarum NRRL Y-27907
#' genome with a median spacing distance of 29 nt. During data processing,
#' probes are filtered to include only those probes corresponding to annotated
#' protein-coding genes.
#'
#' @examples
#' \dontrun{
#' Sp
#' }
"Sp"

#' *Spathaspora passalidarum*: NimbleGen 385 tiled array specification
#' "GPL11079_090803_SP_DW_EXP.ndf.gz"
#'
#' @source Gene Expression Omnibus.
#' \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE24853}
#'
#' Wohlbach DJ, Kuo A, Sato TK, Potts KM et al. Comparative genomics
#' of xylose-fermenting fungi for enhanced biofuel production. Proc Natl Acad
#' Sci U S A 2011 Aug 9;108(32):13212-7. PMID: 21788494
#' \url{https://doi.org/10.1073/pnas.1103039108}
#'
#' @format Tab-separated values
#'
#' @examples
#' \dontrun{
#' "GPL11079_090803_SP_DW_EXP.ndf.gz" %>%
#'     system.file("extdata", ., package = "spathasporaExpression") %>%
#'     readr::read_tsv()
#' }

#' *Spathaspora passalidarum*: Probe Mapping for NimbleGen 385 tiled array
#' "GPL11079_SpasProbeMapping.txt.gz"
#'
#' @source Gene Expression Omnibus.
#' \url{https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE24853}
#'
#' Wohlbach DJ, Kuo A, Sato TK, Potts KM et al. Comparative genomics
#' of xylose-fermenting fungi for enhanced biofuel production. Proc Natl Acad
#' Sci U S A 2011 Aug 9;108(32):13212-7. PMID: 21788494
#' \url{https://doi.org/10.1073/pnas.1103039108}
#'
#' @format Tab-separated values
#'
#' @examples
#' \dontrun{
#' "GPL11079_SpasProbeMapping.txt.gz" %>%
#'     system.file("extdata", ., package = "spathasporaExpression") %>%
#'     readr::read_tsv()
#' }

#' EuKaryotic Orthologous Groups in *Spathaspora passalidarum*
#' "Spapa3_FM1_KOG.tab.gz"
#'
#' @source DOE Joint Genome Institute \url{https://jgi.doe.gov/};
#' *Spathaspora passalidarum* whole genome assembly version 3
#'
#' Wohlbach DJ, Kuo A, Sato TK, Potts KM et al. Comparative genomics
#' of xylose-fermenting fungi for enhanced biofuel production. Proc Natl Acad
#' Sci U S A 2011 Aug 9;108(32):13212-7. PMID: 21788494
#' \url{https://doi.org/10.1073/pnas.1103039108}
#'
#' @format Tab-separated values
#'
#' @examples
#' \dontrun{
#' "Spapa3_FM1_KOG.tab.gz" %>%
#'     system.file("extdata", ., package = "spathasporaExpression") %>%
#'     readr::read_tsv()
#' }

#' JGI BLAST Results
#' "jgi_alignment_hits_cOligos1-100.csv.gz"
#'
#' @source DOE Joint Genome Institute \url{https://jgi.doe.gov/};
#' *Spathaspora passalidarum* whole genome assembly version 3
#'
#' Wohlbach DJ, Kuo A, Sato TK, Potts KM et al. Comparative genomics
#' of xylose-fermenting fungi for enhanced biofuel production. Proc Natl Acad
#' Sci U S A 2011 Aug 9;108(32):13212-7. PMID: 21788494
#' \url{https://doi.org/10.1073/pnas.1103039108}
#'
#' @format Hits Excel Spreadsheet (comma separated values)
#'
#' @examples
#' \dontrun{
#' "jgi_alignment_hits_cOligos1-100.csv.gz" %>%
#'     system.file("extdata", ., package = "spathasporaExpression") %>%
#'     readr::read_csv()
#' }
