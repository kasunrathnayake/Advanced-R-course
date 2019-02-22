library(tidyverse)

int_plot=ggplot(data=interviews_plotting,aes(x=no_membrs,y=number_items))+
  geom_jitter(alpha=0.5,width=0.15,height=0.15)


ggsave("fig_output/members.png",int_plot, width=15,height=10,dpi=72)


int_plot1=ggplot(data=interviews_plotting,aes(x=village,y=rooms,color=respondent_wall_type))+
  geom_jitter(alpha=0.5,width=0.15,height=0.15)
int_plot1

ggsave("fig_output/no_ofrooms.png",int_plot1, width=15,height=10,dpi=72)


ggplot(interviews_plotting,aes(x=no_membrs,fill=village))+
  geom_histogram(binwidth = 1,color="white")


ggplot(interviews_plotting,aes(x=no_membrs,  color=village))+
  geom_freqpoly(binwidth=1)


ggplot(interviews_plotting,aes(x=no_membrs,,y=stat(density),  color=village))+
  geom_freqpoly(binwidth=1)

ggplot(interviews_plotting,aes(x=no_membrs,  color=village))+
  geom_density()

ggplot(interviews_plotting,aes(x=no_membrs,,y=stat_density(kernal="gaussian"),  color=village))+
  geom_freqpoly(binwidth=1)











