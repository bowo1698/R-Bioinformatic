#Vectors: it use c() function
x <- c(1, 3, 4, 5, 10)
x

#Output will be
## [1]  1  3  4  5 10

y <- 1:5 # Membuat variable Y dengan input angka 1 sampai 5
y + 2 # Dari output Y sebelumnya, setiap angka ditambahkan 2

#Output will be
## [1] 3 4 5 6 7

y*2 # Dari output variable Y, setiap angka dikalikan 2
#Output will be
## [1]  2  4  6  8 10

y^2 # Dari output variable Y, setiap angka dipangkatkan 2
#Ouput will be
## [1]  1  4  9 16 25

#-----------------------------------------------------------------------------------------------------------------------
r1 <- rep(1, 3) #Membuat vektor angka '1' sebanyak 3x
r1 #Output will be: [1] 1 1 1
length(r1) #Mencari tau berapa banyak vektor yang dihasilkan oleh variable 'r1', Output will be [1] 3

class(r1) #Mencari tau apa tipe data dari variable 'r1', Output will be [1] "numeric" == Tipe data 'numeric'
# Di R ada 3 tipe data
# 1. Numeric = 0, 1, 2 dst atau 0.1, 0.25, 0.35 dst
# 2. Character = Agus, Bowo, dengan input menggunakan petik 2 "Character_X"
# 3. Logical = TRUE or FALSE

#-----------------------------------------------------------------------------------------------------------------------
#Matrix
#Matrix adalah data yang mengandung baris dan kolom

x <- c(1, 2, 3, 4)
y <- c(0.3, 0.25, 0.14)
matrix1 <- cbind(x, y); matrix1 #Function cbind(baris, kolom) untuk menggabungkan baris (x) dan kolom (y),
                                #+ ;nama_variable (matrix1) untuk menampilkan hasil gabungan baris dan kolom
#Output
## [1,] 1 0.30  ---- Baris ke-1
## [2,] 2 0.25  ---- Baris ke-2
## [3,] 3 0.14  ---- Baris ke-3
## [4,] 4 0.30  ---- Baris ke-4

#Transpose matrix
t(matrix1) #Function t(nama_variabel) untuk men-transpose/membalik baris dan kolom
##Output
##  [,1] [,2] [,3] [,4]
## x  1.0 2.00 3.00  4.0
## y  0.3 0.25 0.14  0.3

dim(matrix1) #Function dim() untuk mencaritahu ada berapa baris dan kolom
#Output
## [1] 4 2 ---- Ada 4 Baris dan 2 kolom di variable matrix1

matrix2 <- matrix(c(1, 3, 2, 5, -1, 2, 2, 3, 9), nrow = 3) # Membuat matrix dengan 9 input angka
                                                           # dan membaginya menjadi 3 baris
matrix2 #Menampilkan output variable 'matrix2'
##Output
##     [,1] [,2] [,3]
## [1,]    1    5    2
## [2,]    3   -1    3
## [3,]    2    2    9

##----------------------------------------------------------------------------------------------------------------------
## DATA FRAMES
# Data frame merupakan tabular yang berisi tentang informasi data dalam bentuk matrix baris dan kolom

#Membuat custom dataframe
chr <- c("chr1", "chr2", "chr3", "chr4") #Kolom chr berisi vektor chr1, chr2, chr3, chr4
strand <- c("-", "/", "+", "*")
start <- c(200, 4000, 3200, 5000)
end <- c(250, 150, 230, 410)

dataframe <- data.frame(chr, strand, start, end) #Data chr, strand, start, dan end dimasukkan ke dalam variable dataframe
# It will make a table in the R-enviroments
names(dataframe) <- c("chr", "strand", "start", "end")
dataframe # Display dataframe
##OUTPUT
##   chr strand start end
## 1 chr1      -   200 250
## 2 chr2      /  4000 150
## 3 chr3      +  3200 230
## 4 chr4      *  5000 410

# Only shows specific colums
dataframe[,2:4] # calling with list [] will show you column 2 until 4.
# INGAT! [baris, kolom]
# Artinya, ini aan menapilkan data kolom, karena ditulis setelah tanda ',', jika ditulis sebelum tanda ',' maka
# hanya akan menampilkan data baris. Jika ditulis baik setelah maupun sebelum tanda ',' maka akan menampilkan keduanya
# makna tanda ':' berarti 'sampai dengan'. misal 2:4 artinya data di kolom/baris 2 sampai dengan 4
# OR in other way
##OUTPUT
##  strand start end
## 1      -   200 250
## 2      /  4000 150
## 3      +  3200 230
## 4      *  5000 410

dataframe[, c("chr", "strand")] # dengan method list[] +  vektor c(), hanya akan menampilkan data "chr" & "strand"
# fungsi c() di dalam list[] berguna untuk menseleksi data yang mana yang mau ditampilkan
# makna tanda ',' dalam vektor c() berarti 'dan'.
##OUTPUT
##   chr strand
## 1 chr1      -
## 2 chr2      /
## 3 chr3      +
## 4 chr4      *

dataframe $ start # menampilkan isi dari kolom "start" dengan penambahan simbol $
##OUTPUT
## [1]  200 4000 3200 5000

dataframe[c(1, 3), ] #metode seleksi data dengan urutan baris. dalam hal ini yang dipilih adalah baris ke-1 dan baris ke-3
dataframe[c(1, 3), c(2, 4)] # metode seleksi data dengan hanya memilih data di baris ke-1 dan ke-3 serta pada kolom
# ke-2 (strand) dan kolom ke-4 (end)
## OUTPUT
##  strand end
## 1      - 250
## 3      + 230

dataframe[dataframe $ end > 150, ] # mendapatkan data pada kolom 'end' dimana hanya dipilih yang nilai barisnya lebih
# dari 150
## OUTPUT
##   chr strand start end
## 1 chr1      -   200 250
## 3 chr3      +  3200 230
## 4 chr4      *  5000 410

#-----------------------------------------------------------------------------------------------------------------------
## LIST FUNCTION
# Function yang berfungsi untuk membuat berbagai objek data berbeda dalam satu variable

datalist <- list(nama = "Bowo",
                 mynumbers = c(1, 2, 3, 4, 150),
                 mymatrix = matrix(1:9, ncol = 3),
                 age = 25)
datalist
# Extract data di dalam list yang telah dibuat
datalist [[1]] # Berdasarkan komponen posisi di dalam list. 1 adalah posisi ke-1 dalam list "datalist"
## OUTPUT
## [1] "Bowo"

datalist[["mymatrix"]] # Berdasarkan komponen nama di dalam list. "mymatrix" adalah komponen nama dalam list "datalist"
## OUTPUT
##     [,1] [,2] [,3]
## [1,]    1    4    7
## [2,]    2    5    8
## [3,]    3    6    9

datalist $ age # Extract dengan metode $
## OUTPUT
## [1] 25

##----------------------------------------------------------------------------------------------------------------------
