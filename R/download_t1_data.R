#' @title Download T1 Image Filenames
#'
#' @description Download the files for the T1 images
#' @param ... arguments to pass to \code{\link[kirby21.base]{download_kirby21_data}},
#' \code{modalities = "T1"} so it cannot be specified
#' @return Indicator if the data is downloaded.
#' 
#' @export
#' @importFrom kirby21.base download_kirby21_data all_modalities
#' @examples 
#' download_t1_data(outdir = tempdir())
download_t1_data =  function(...) {  
  mods = c("T1", "BrainMask")
  names(mods) = mods
  x = sapply(mods,
    function(modality) {
      kirby21.base::download_kirby21_data(
        modality = modality, 
        ...)
    })
  return(all(x))
}

