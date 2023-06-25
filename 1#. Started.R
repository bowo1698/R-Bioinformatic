# install package named "randomForests" from CRAN
install.packages("randomForests")

# get the installer package if you don't have
install.packages("BiocManager")

# install bioconductor package "rtracklayer"
BiocManager::install("rtracklayer")

library(devtools)
install_github("hadley/stringr", force = TRUE)

# download the source file
download.file(
"https://github.com/al2na/methylKit/releases/download/v0.99.2/methylKit_0.99.2.tar.gz",
               destfile="methylKit_0.99.2.tar.gz")
# install the package from the source file
install.packages("methylKit_0.99.2.tar.gz",
                 repos=NULL,type="source")
# delete the source file
unlink("methylKit_0.99.2.tar.gz")

# updating CRAN packages
update.packages()

# updating bioconductor packages
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install()
