#	R Project Launch
#	This will do everything

#	Assumes the working directory is at the root of the project
print("00-Launch.R")
print("Launching project: CAL Analytics...")
source('scripts/01-Load.R')
source('scripts/02-Munge.R')
source('scripts/03-Functions.R')
source('scripts/04-Do.R')