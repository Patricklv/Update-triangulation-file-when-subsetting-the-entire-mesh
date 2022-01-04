#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Customized function to create 3D mesh from vertices and triangulation file
lm2mesh <- function(vb, it) {
	library(rgl)
    vb <- t(vb)
    vb <- rbind(vb, 1)
    rownames(vb) <- c("xpts", "ypts", "zpts", "")

    it_mat <- t(as.matrix(it))
    rownames(it_mat) <- NULL

    vertices <- c(vb)
    indices <- c(it_mat)

    tmesh3d(vertices = vertices, indices = indices, homogeneous = TRUE, 
            material = NULL, normals = NULL, texcoords = NULL)
}
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~