#ggplot and dplyer

setwd("~/Desktop/workshop")

install.packages('ggplot2')
install.packages('dplyr')

library('ggplot2')
library('dplyr')

head(mammals)
mammals <- read.csv("data/mammals.csv", head=T)
glimpse(mammals)

plot(adult_head_body_len_mm ~ adult_body_mass_g, data=mammals)

ggplot(data=mammals, aes(x=adult_body_mass_g, y=adult_head_body_len_mm)) +
  geom_point(size=3, aes(color=order)) 

tails <- filter(mammals,order=="Rodentia" | adult_body_mass_g > 100000)
glimpse(tails)

ggplot(data=tails, aes(x=adult_body_mass_g, y=adult_head_body_len_mm)) +
  geom_point(size=3, aes(color=order)) 

tmammals <- filter(mammals, habitat == "T")
colnames(tmammals)
View(arrange(tmammals, adult_body_mass_g))

ggplot(data=mammals, aes(x = habitat, y = adult_body_mass_g, fill=habitat)) + 
  geom_boxplot()+
  geom_jitter()+
  scale_y_log10()+
  scale_fill_manual(values = c("dodgerblue", "forestgreen"))+
  labs(x = 'Habitat', y = 'Adult Body Mass (g)')

#geom are painted on top of each other
ggplot(mammals, aes(x=habitat, y=adult_body_mass_g, fill=habitat))+
  geom_jitter()+
  geom_boxplot()+
  scale_y_log10()

ggplot(data=mammals, aes(x = habitat, y = adult_body_mass_g, fill=habitat)) + 
  geom_boxplot(aes())+
  geom_jitter(aes(color=order), alpha=0.2)+
  scale_y_log10()+
  scale_fill_manual(name = "Habitat", values = c("dodgerblue", "forestgreen"))+
  labs(x = 'Habitat', y = 'Adult Body Mass (g)')+
  scale_color_discrete(name = "Animal Orders")

