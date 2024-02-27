library(bipartite)
?frame2webs
testdata <-read.csv("matrix_input.csv",header=TRUE)
matriz<-frame2webs(testdata,
                   varnames=c("Molecule_name","Description_name","Freq_1","Freq_comp"),
                   type.out="array")
color1<-rainbow(14)
plotweb(matriz[,,1],method="normal",
        col.interaction = c("gray"),
        col.high = "green",
        col.low = color1,
        arrow="down.center",
        text.rot = 90,
        low.y=0.6,
        high.y=1.5)

plotweb(matriz[,,1],method="normal",
        col.interaction = c("gray"),
        col.high = "green",
        col.low = color1,
        arrow=" down.center",
        text.rot = 90,
        low.y=0.6,
        high.y=1.2,
        ybig=0.75
        )


