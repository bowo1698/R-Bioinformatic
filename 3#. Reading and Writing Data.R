enhancerFilePath = system.file("extdata",
                "subset.enhancers.hg18.bed",
                package="compGenomRData")
cpgiFilePath = system.file("extdata",
                "subset.cpgi.hg18.bed",
                package="compGenomRData")
# read enhancer marker BED file
enh.df <- read.table(enhancerFilePath, header = FALSE)

# read CpG island BED file
cpgi.df <- read.table(cpgiFilePath, header = FALSE)

# check first lines to see how the data looks like
head(enh.df)
head(cpg1.df)

write(cpgi.df, enh.df, file = "mydata.RData")
load("mydata.RData")

# simpan RDS()
saveRDS(cpgi.df, file = "cpgi.rds")
x = readRDS("cpgi.rds")
head(x)

library(data.table)
df.f = d(enhancerFilePath, header = FALSE, data.table = FALSE)

library(readr)
df.f2=read_table(enhancerFilePath, col_names = FALSE)
