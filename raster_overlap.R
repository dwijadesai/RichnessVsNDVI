library(terra)
sp_rich23<- rast("~/Library/CloudStorage/OneDrive-UBC/Species Richness data/Combined_SR_2023/Combined_SR_2023.tif")
sp_rich23
predNDVI<- rast("~/Library/CloudStorage/OneDrive-UBC/Species Richness data/Environmental/mean_predNDVI_raster (1).nc")
predNDVI
crs_info <-crs(sp_rich23)
print(crs_info)
crs_info<- crs(predNDVI)
print(crs_info)
predNDVI_MW <- project(predNDVI, crs(sp_rich23))
print (crs(predNDVI_MW))
library(raster)
library(terra) 
library(ncdf4)
library(sf)
library(geodata)
crs_wintri <- "ESRI:53018"
world_sf<- st_as_sf(rworldmap::getMap(resolution="low"))
worldsf<- subset(world_sf, continent!="Antarctica")
world_wintri<- lwgeom::st_transform_proj(world_sf, crs=crs_wintri)
world_wintri<- vect(world_wintri)
message("processing the sp_rich23 raster.")
sp_rich23<- rast(sp_rich23)
sp_rich23<- terra::project(sp_rich23, crs_wintri)
sp_rich23<- terra::mask(sp_rich23, world_wintri)
sp_rich23<- project(sp_rich23, crs(predNDVI))
sp_rich23
print(sp_rich23)
plot(sp_rich23)
plot(predNDVI)
plot(sp_rich23)
sp_rich23<- rast("~/Library/CloudStorage/OneDrive-UBC/Species Richness data/Combined_SR_2023/Combined_SR_2023.tif")
plot(sp_rich23)
sp_rich23<- project(sp_rich23, crs(predNDVI))
predNDVI
sp_rich23                    
plot(predNDVI)
plot(sp_rich23)
crs_wintri <- "ESRI:53018"
world_sf<- st_as_sf(rworldmap::getMap(resolution="low"))
worldsf<- subset(world_sf, continent!="Antarctica")
world_wintri<- lwgeom::st_transform_proj(world_sf, crs=crs_wintri)
world_wintri<- vect(world_wintri)
message("processing the sp_rich23 raster.")
sp_rich23<- rast(sp_rich23)
sp_rich23<- terra::project(sp_rich23, crs_wintri)
sp_rich23<- terra::mask(sp_rich23, world_wintri)
data_frame<- data.frame(predNDVI)
print(sp_rich23)
plot(sp_rich23)
print(predNDVI)
sp_rich23<- project(sp_rich23, crs(predNDVI))
print(sp_rich23)
plot(sp_rich23)
sp_rich23<- rast("~/Library/CloudStorage/OneDrive-UBC/Species Richness data/Combined_SR_2023/Combined_SR_2023.tif")
plot(sp_rich23)
sp_rich23<- project(sp_rich23, crs(predNDVI))
plot(sp_rich23)
print(sp_rich23)
CV_ras <- rast("~/Library/CloudStorage/OneDrive-UBC/Species Richness data/Environmental/coeff_variation_raster (1).nc")
CV_ras
plot(CV_ras)
var_res<- rast ("~/Library/CloudStorage/OneDrive-UBC/Species Richness data/Environmental/var_residuals_raster (1).nc")
var_res
plot(var_res)
predNDVI<- rast("~/Library/CloudStorage/OneDrive-UBC/Species Richness data/Environmental/mean_predNDVI_raster (1).nc")
predNDVI
sp_rich23<- rast("~/Library/CloudStorage/OneDrive-UBC/Species Richness data/Combined_SR_2023/Combined_SR_2023.tif")
sp_rich23<- project(sp_rich23, crs(predNDVI))
plot(sp_rich23)
print(sp_rich23)
CV_ras <- rast("~/Library/CloudStorage/OneDrive-UBC/Species Richness data/Environmental/coeff_variation_raster (1).nc")
CV_ras
plot(CV_ras)
var_res<- rast ("~/Library/CloudStorage/OneDrive-UBC/Species Richness data/Environmental/var_residuals_raster (1).nc")
var_res
plot(sp_rich23)
sp_rich23
print(sp_rich23)
plot(sp_rich23)
plot(bc)
library(sf)
sp_rich23_crop <-crop(sp_rich23, bc)
plot(sp_rich23_crop)
plot(predNDVI)
predNDVI_crop<- crop(predNDVI, bc)
plot(predNDVI_crop)
res(sp_rich23_crop)
res(predNDVI_crop)
res