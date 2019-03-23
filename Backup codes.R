Backup R Scripts

 #### Store - Impute values for CompetitionOpenSince and Promo2Since
# Check distribution  of months (#Need month factor to better represent months)
 monthcolors = c("black", "black", "black", "black","black","black","black", "black", "red", "black", "black","black")
 store %>%  filter(!is.na(CompetitionOpenSinceMonth)) %>% ggplot(aes(x= CompetitionOpenSinceMonth , fill = CompetitionOpenSinceMonth))+ geom_bar(show.legend = F) +
 scale_fill_manual(values= monthcolors) +
 labs(title = "Distribution of CompetitionOpenSinceMonth")


 #Check distribution  of years
 yearcolors =c("black", "black", "black", "black","black", "black", "black", "black", "black","black", "black", "black", "black", "black","black", "black", "black", "black", "black","black", "red", "black", "black")
 store %>%  filter(!is.na(CompetitionOpenSinceYear)) %>% ggplot(aes(x= CompetitionOpenSinceYear , fill = CompetitionOpenSinceYear))+ geom_bar(show.legend = F)  + scale_fill_manual(values= yearcolors)+
 labs(title = "Distribution of CompetitionOpenSinceYear") +
     theme(axis.text.x = element_text(angle = 45, hjust = 1))