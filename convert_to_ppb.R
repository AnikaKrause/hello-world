Sys.setenv(tz="UTC")
library(PAM520)
usePackage(PAM520)

############################# BEIJING   ############################

f <- 145:174 

############################   CO with outliers

Bj_CO <- readRDS("C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Bj/Bj_CO_allPAMs.Rds")
df <- Bj_CO[ ,grepl("CO_uV" , names(Bj_CO))]

for (n in 1:length(f)){
  df$CO_ppb <- df[,n]/231                             #231 uV per ppb  = generic sensitivity taken from C:\Users\Anika\Dropbox (Cambridge University)\COPE - sensitivities table
  names(df)[names(df) == "CO_ppb"] <- paste("CO_ppb", f[n], sep = "_")
}
for (n in 1:length(f)){
  df$CO_ppm <- df[,n]/231000 
  names(df)[names(df) == "CO_ppm"] <- paste("CO_ppm", f[n], sep = "_")
}

Bj_CO_ppb <- data.frame("date"=Bj_CO$date,df )
#timePlot(Bj_CO_ppb, pollutant = c("CO_uV_155","CO_ppb_155","CO_ppm_155"))   #check if it worked



saveRDS(Bj_CO_ppb, "C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Bj/Bj_CO_ppb_generic_conversion.rds")
write.csv(Bj_CO_ppb, "C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Bj/Bj_CO_ppb_generic_conversion.csv")



############################   NO2 with outliers

Bj_NO2 <- readRDS("C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Bj/Bj_NO2_allPAMs.Rds")
df <- Bj_NO2[ ,grepl("NO2_uV" , names(Bj_NO2))]

for (n in 1:length(f)){
  
  df$NO2_ppb <- df[,n]/222           # taken from  C:\Users\Anika\Desktop\Masterarbeit\sensor calibration/Sensitivity_PAMS_Labtest_210116
  names(df)[names(df) == "NO2_ppb"] <- paste("NO2_ppb", f[n], sep = "_")
}
for (n in 1:length(f)){
  df$NO2_ppm <- df[,n]/222000                             
  names(df)[names(df) == "NO2_ppm"] <- paste("NO2_ppm", f[n], sep = "_")
  
  
}

Bj_NO2_ppb <- data.frame("date"=Bj_NO2$date,df )
#timePlot(Bj_NO2_ppb, pollutant = c("NO2_uV_155","NO2_ppb_155","NO2_ppm_155"))   #check if it worked



saveRDS(Bj_NO2_ppb, "C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Bj/Bj_NO2_ppb_generic_conversion.rds")
write.csv(Bj_NO2_ppb, "C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Bj/Bj_NO2_ppb_generic_conversion.csv")



############################   CO without outliers

Bj_CO <- readRDS("C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr/Beijing_split_by_pollutants/Bj_CO_allPAMs.rds")
df <- Bj_CO[ ,grepl("CO_uV" , names(Bj_CO))]

for (n in 1:length(f)){
  
  df$CO_ppb <- df[,n]/231                             #231 uV per ppb  = generic sensitivity taken from C:\Users\Anika\Dropbox (Cambridge University)\COPE - sensitivities table
  names(df)[names(df) == "CO_ppb"] <- paste("CO_ppb", f[n], sep = "_")
  df$CO_ppm <- df[,n]/231000                            
  names(df)[names(df) == "CO_ppm"] <- paste("CO_ppm", f[n], sep = "_")
  
}

Bj_CO_ppb <- data.frame("date"=Bj_CO$date,df )


saveRDS(Bj_CO_ppb, "C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr/Beijing_split_by_pollutants/Bj_CO_ppb_generic_conversion.rds")
write.csv(Bj_CO_ppb, "C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr/Beijing_split_by_pollutants/Bj_CO_ppb_generic_conversion.csv")




############################# PINGGU   ############################

f <- c( 100, 101, 106:120, 136:144, 23, 49, 54, 62)

############################   CO without outliers

Pg_CO <- readRDS("C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr/Pinggu_split_by_pollutants/Pinggu_CO_allPAMs.rds")
df <- Pg_CO[ ,grepl("CO_uV" , names(Pg_CO))]

for (n in 1:length(f)){
  
  df$CO_ppb <- df[,n]/231                             #231 uV per ppb  = generic sensitivity taken from C:\Users\Anika\Dropbox (Cambridge University)\COPE - sensitivities table
  names(df)[names(df) == "CO_ppb"] <- paste("CO_ppb", f[n], sep = "_")
}
for (n in 1:length(f)){
df$CO_ppm <- df[,n]/231000                           
  names(df)[names(df) == "CO_ppm"] <- paste("CO_ppm", f[n], sep = "_")
  
}

Pg_CO_ppb <- data.frame("date"=Pg_CO$date,df )




saveRDS(Pg_CO_ppb, "C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Pg/Pg_CO_ppb_generic_conversion.rds")
write.csv(Pg_CO_ppb, "C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Pg/Pg_CO_ppb_generic_conversion.csv")



############################   NO2 with outliers

Pg_NO2 <- readRDS("C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Pg/Pinggu_NO2_allPAMs.Rds")
df <- Pg_NO2[ ,grepl("NO2_uV" , names(Pg_NO2))]

for (n in 1:length(f)){
  
  df$NO2_ppb <- df[,n]/222           # taken from  C:\Users\Anika\Desktop\Masterarbeit\sensor calibration/Sensitivity_PAMS_Labtest_210116
  names(df)[names(df) == "NO2_ppb"] <- paste("NO2_ppb", f[n], sep = "_")
}
for (n in 1:length(f)){ 
  df$NO2_ppm <- df[,n]/222000                             
  names(df)[names(df) == "NO2_ppm"] <- paste("NO2_ppm", f[n], sep = "_")
}

Pg_NO2_ppb <- data.frame("date"=Pg_NO2$date,df )



saveRDS(Pg_NO2_ppb, "C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Pg/Pg_NO2_ppb_generic_conversion.rds")
write.csv(Pg_NO2_ppb, "C:/Users/Anika/Dropbox (Cambridge University)/beijing/data/aggr_with_outliers/split_by_pollutant_Pg/Pg_NO2_ppb_generic_conversion.csv")












