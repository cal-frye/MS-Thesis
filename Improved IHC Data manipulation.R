##Invoking the needed files & getting an overview
IHC.Data = read.table(file = file.choose(),
                    header = T, sep = " ",
                    na.strings = "`",
                    stringsAsFactors = F)
library(tidyverse)
library(ggpubr)

##Visualization of F4/80 Data
IHC.Data$Treatment = factor(IHC.Data$Treatment, levels = c("REG", "HIGH"))
ggplot(data = IHC.Data, mapping = aes(x = Treatment, y = Count, color = Treatment, fill = Treatment))+
  theme(aspect.ratio = 4/3, plot.title = element_text(face = "bold"), legend.position = "none", axis.title = element_text(face = "bold"))+
  ggtitle("Macrophage Invasion of MyC-CaP Tumors")+
  geom_violin(scale = "area")+
  geom_dotplot(binaxis = "y", stackdir = "center", binwidth = 40, color = "black", fill = "black")+
  stat_compare_means(method = "t.test", label.x = 1)+
  labs(x = "Mouse Diet Type", y = "F4/80 Stain")


##Analysis of the data
#Ho: mean stain count of High > mean stain count of Reg
#two-sided
#assume non-equal variances
t.test(IHC.Data$Count ~ IHC.Data$Treatment, mu=0, alt="two.sided", conf=0.95, var.eq=F, paired=F)

var(IHC.Data$Count[IHC.Data$Treatment=="HIGH"])
var(IHC.Data$Count[IHC.Data$Treatment=="REG"])
view(IHC.Data)
