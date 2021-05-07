# Column Names: 
# "TripID" = Unique Trip ID NUmber     
# "TripDate"  = Trip Date 
# "Fish_record" = Unique Fish ID Number  
# "fishid" =  Unique Fish ID Number for trip     
# "Maturity" = Maturity ID Number    
# "pref" = Pre Fillet Length        
# "pfe" = Post Fillet Elongate         
# "pfs" = Post Fillet Short         
# "pfn" = Post Fillet Natural         
# "weight_g" = Weight    
# "Filleted_By" = Filleter
# "data_notes" = notes  
# "ProcessDate" = Date Processed  
# "ProcessMonth" = Month Processed
# "ProcessDay"  = Day Processed
# "Process Year" = Year Processed
# "Trip Location" = Trip Location
# "Measurer" = Measured By  
# "Recorder" = Recorded By      
# "notes" = notes       
# "data_quality" = Indicates whether length is an outliar
# "species" = Species common name
# "Maturity" = Maturity
# "Sex" = Sex 
# "Project" = project fish were obtained from
# "Port" = Port Trip was based out of
# "Vessel" = Trip Vessel

#read in data
fishdat2 <- read.csv("NMFS_top_4_length_distributions.csv")

dev.off()
par(mfrow = c(2,2))
hist(fishdat2$pref[fishdat2$species == "Blue rockfish"], 
     xlab = "Length (cm)", 
     main = "Blue Rockfish Length Distribution", 
     xlim = c(15,45),
     breaks = 20)
hist(fishdat2$pref[fishdat2$species == "Copper rockfish"], 
     xlab = "Length (cm)",
     main = "Copper Rockfish Length Distribution",
     xlim = c(25,50),
     breaks = 20)
hist(fishdat2$pref[fishdat2$species == "Vermilion rockfish"], 
     breaks = 20, 
     main = "Vermilion Rockfish Length Distribution", 
     xlab = "Length (cm)",
     xlim = c(10,60))
hist(fishdat2$pref[fishdat2$species == "Gopher rockfish"], 
     breaks = 20,
     main = "Gopher Rockfish Length Distribution", 
     xlab = "Length (cm)",
     xlim = c(15,35))

#Same Graph GGPLOT
# ggplot()+
#   geom_histogram(data = fishdat2, aes(pref, fill = species), binwidth = 1, color = "black")+
#   scale_fill_manual(values = c("#CCCCCC", "#999999", "#666666", "#333333"))+
#   labs(title = "Rockfish Length Frequency", x = "", y = "Frequency")+
#   facet_wrap(.~ species)+
#   theme_bw() +
#   theme(panel.grid = element_blank(),
#         plot.title = element_text(hjust = 0.5),
#         legend.position = "none")