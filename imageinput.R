library(png)
library(grid)
x <- readPNG("Screenshot.png")
dim(x) ##returns x y z
coral_plot <- as.raster(x)
dim(coral_plot) ##returns x y
grid.raster(coral_plot)

## View image as matrix 2d
tst<-as.matrix(coral_ras) ##converts raster to matrix
View(tst)



##code to print grayscale image in R
library(png)
foo <- readPNG("Screenshot.png")
bar<- foo[,,1]+foo[,,2]+foo[,,3]
# normalize
bar <- bar/max(bar)
# one of many ways to plot
plot(c(0,1),c(0,1),t='n')
rasterImage(bar, 0,0,1,1)
