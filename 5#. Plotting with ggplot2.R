#Using ggplot2 to make graphs

library(ggplot2) #memanggil package ggplot2

datanormX <- rnorm(50) #load data 1
datanormY <- rnorm(50) #load data 2

data1 <- data.frame(col1 = datanormX, col2 = datanormY) #membuat dataframe dari data 1 & data 2, nama kolom diganti
#SCATTERPLOT
data_scatter <- ggplot(data1, aes(col1, col2)) + #function: ggplot(nama_variable_dataframe, aes(sumbu_X, sumbu_Y))
  geom_point()
data_scatter

#HISTOGRAM
data_histogr <- ggplot(data1, aes(col1)) + #hanya menampilkan data "col1" atau datanormX
  geom_histogram() +
  labs(title = "Histogram for Random Variable", x = "Variabels", y = "Count")
data_histogr

#BOXPLOT
#Membuat ulang dataframe dari datanormX dan datanormY kedalam satu dataframe dengan function rbind()
data2 <- rbind(data.frame(Nilai = datanormX, Kelompok = "X"),
               data.frame(Nilai = datanormY, Kelompok = "Y"))
# metode di atas akan menghasilkan 2 kolom. kolom 1 adalah nilai dari kolom 2 berdasarkan groupnya masing-masing
#Boxplot dengan ggplot2
data_box <- ggplot(data2, aes(Kelompok, Nilai)) +
  geom_boxplot()
data_box

#MENGKOMBINASIKAN PLOT
#Jika kita ingin ingin mengetahui bagaimana hasil perbandingan data yang dari dua kelompok berbeda
# namun masih dalam satu jenis data (satu kolom) yang sama, maka dapat menggunakan function facet_grid()
data_plot_gabung <- ggplot(data2, aes(Nilai)) + # Mengambil dataframe dari data2, dengan sumbu-x adalah kolom "Nilai"
  geom_histogram() + facet_grid(.~Kelompok) # Menggunakan function facet_grid(.~Kolom_untuk_kelompok)
data_plot_gabung
#Faceting hanya dapat digunakan jika kita menggunakan data-data dalam satu dataset/kolom yang sama dalam dataframe

library(cowplot) #memanggil package cowplot untuk menggabungkan 2 data dan 2 grafik berbeda

#histogram
histograph <- ggplot(data2, aes(Nilai, fill = Kelompok)) +
  geom_histogram()
#scatterplot
scattergraph <- ggplot(data1, aes(col1, col2)) +
  geom_point()
#Plotting 2 grafik di atas menjadi satu frame dan dilabel sebagai A dan B dengan function plot_grid() dari package cowplot
#plot_grid(grafik1, grafik2, labels = c("label1", "label2"), label_size = ukuran_label)
grafik_gabung <- plot_grid(histograph, scattergraph, labels = c("A", "B"), label_size = 12)
grafik_gabung
