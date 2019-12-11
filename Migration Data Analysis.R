###Analysis of Migration Data 12-5-19
##Invoking the needed files & getting an overview
Mig.Data = read.table(file = file.choose(),
                      header = T, sep = " ",
                      na.strings = "`",
                      stringsAsFactors = F)
library(tidyverse)
library(ggpubr)

##Statistical analysis of Migration Data
view(Mig.Data)

bartlett.test(Mig.Data$Count ~ interaction(Mig.Data$Treatment, Mig.Data$Stromal.Group), data=Mig.Data)
#if p-value result of Bartlett.test is greater than 0.05 significance threshold, there is no evidence to suggest that the variance between groups is statistically significantly different- which is good! Proceed!

levels(Mig.Data$Treatment)

res.aov <- aov(Count~Treatment, data=Mig.Data)
summary(res.aov)

res.aov2 <- aov(Count~Stromal.Group, data=Mig.Data)
summary(res.aov2)

rm(res.aov3)

TukeyHSD(res.aov)
TukeyHSD(res.aov2)

pairwise.t.test(Mig.Data$Count, Mig.Data$Treatment, p.adjust.methods)
pairwise.t.test(Mig.Data$Count, Mig.Data$Stromal.Group, p.adjust.methods)

##Visualization of Migration Data
compare_means(formula = Count~Unique.group, data = df, method = "anova")

df$Unique.group = factor(df$Unique.group, levels = c("None.None", "None.AU", "None.AL", "Primary.None",
                                                   "Primary.AU", "Primary.AL"))
ggplot(data = df, mapping = aes(x = Unique.group, y = Count, color= Stromal.Group, fill = Stromal.Group))+
  theme(aspect.ratio = 3/4, plot.title = element_text(face = "bold"), legend.title = element_text(face = "bold"),
        axis.title = element_text(face = "bold"))+
  ggtitle("MyC-CaP Migration in Response to Primary Macrophage Signaling")+
  geom_violin(scale = "area")+
  geom_dotplot(binaxis = "y", stackdir = "center", binwidth = 2, color = "black", fill = "black")+
  labs(x = "Ex Vivo Treatment", y = "MyC-CaP Migration", fill= "Stroma", color= "Stroma")+
  scale_x_discrete(labels= c("-AGE", "+AGE MyC-CaP", "+AGE MO", "-AGE", "+AGE MyC-CaP", "+AGE MO"))+
  scale_fill_discrete(labels= c("None", "Primary MO"))+
  scale_color_discrete(labels= c("None", "Primary MO"))+
  stat_compare_means(mapping = NULL, comparisons = NULL, hide.ns = F, label = NULL,
                     label.x = NULL, label.y = NULL, formula = Count~Unique.group, data = df, method = "anova")



Unique.group <- Mig.Data$Group
OG.Mig.Data <- read.table(file = file.choose(), header = T, sep = " ", na.strings = "`", stringsAsFactors = F)

Unique.group
df <- data.frame(OG.Mig.Data, Unique.group)
df
