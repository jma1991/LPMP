cleanSCE <- function(x, sample) {

  # Clear metadata
  metadata(x) <- list()

  # Replace rownames
  rownames(x) <- rowData(x)$gene_id

  # Clear rowData
  rowData(x) <- NULL

  # Replace rowRanges
  rowRanges(x) <- relist(GRanges(), PartitioningByEnd(integer(length(x)), names = rownames(x)))

  # Clear colnames
  colnames(x) <- NULL

  # Replace colData
  colData(x) <- DataFrame(
    cell = paste(sample, seq_len(ncol(x)), sep = "_"),
    barcode = NA,
    sample = sample,
    pool = NA,
    stage = NA,
    sequencing.batch = NA,
    theiler = NA,
    doub.density = NA,
    doublet = NA,
    cluster = NA,
    cluster.sub = NA,
    cluster.stage = NA,
    cluster.theiler = NA,
    stripped = NA,
    celltype = NA,
    colour = NA,
    sizeFactor = sizeFactors(x)
  )

  # Clear reducedDims
  reducedDims(x) <- NULL

  # Clear altExp
  altExp(x) <- NULL

  # Return object
  return(x)

}
