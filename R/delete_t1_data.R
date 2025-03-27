#' @title Delete T1 Image Filenames
#'
#' @description Delete the files for the T1 images
#' @param ... arguments to pass to \code{\link[kirby21.base]{delete_kirby21_data}},
#' \code{modalities = "T1"} so it cannot be specified
#' @return Nothing is returned
#' 
#' @export
#' @importFrom kirby21.base delete_kirby21_data all_modalities
delete_t1_data =  function(...) {  
  x = kirby21.base::delete_kirby21_data(modality = "T1", ...)
  return(x)
}

