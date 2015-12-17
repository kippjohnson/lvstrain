
source("~/Projects/partho/functions/readecho.R")

echo1 <- read.echo("~/Projects/partho/data/pborsuk2c.txt")
echo2 <- read.echo("~/Projects/partho/data/pborsuk4c.txt")

nstrains <- dim(echo1$strain)[1]

par(mfrow=c(2,1))



### Strain
# Plot echo #1 strain
plot(echo1$time.progression, echo1$strain[1,], type="l", ylab="Strain (%)", xlab="Time (ms)", main="Sample Echo 1",
     ylim=c( min(echo1$strain), max(echo1$strain)))

for(i in 2:nstrains){
  lines(echo1$time.progression, echo1$strain[i,], type="l", col=i+1)
}

# Plot echo #2 strain
plot(echo2$time.progression, echo2$strain[1,], type="l", ylab="Strain (%)", xlab="Time (ms)", main="Sample Echo 2",
     ylim=c( min(echo2$strain), max(echo2$strain)))

for(i in 2:nstrains){
  lines(echo2$time.progression, echo2$strain[i,], type="l", col=i+1)
}



### Strain Rates
# Plot echo #1 strain rate
plot(echo1$time.progression, echo1$strain.rate[1,], type="l",
     ylim=c( min(echo1$strain.rate), max(echo1$strain.rate)))

for(i in 2:nstrains){
  lines(echo1$time.progression, echo1$strain.rate[i,], type="l", col=i+1)
}


# Plot echo #2 strain rate
plot(echo2$time.progression, echo2$strain.rate[1,], type="l",
     ylim=c( min(echo2$strain.rate), max(echo2$strain.rate)))

for(i in 2:nstrains){
  lines(echo2$time.progression, echo2$strain.rate[i,], type="l", col=i+1)
}


### Radial strain
# Plot echo #1 radial strain
plot(echo1$time.progression, echo1$radial.strain[1,], type="l", ylab="Radial Strain (%)", xlab="Time (ms)", main="Sample Echo 1",
     ylim=c( min(echo1$radial.strain), max(echo1$radial.strain)))

for(i in 2:nstrains){
  lines(echo1$time.progression, echo1$radial.strain[i,], type="l", col=i+1)
}

# Plot echo #2 radial strain
plot(echo2$time.progression, echo2$radial.strain[1,], type="l", ylab="Radial Strain (%)", xlab="Time (ms)", main="Sample Echo 2",
     ylim=c( min(echo2$radial.strain), max(echo2$radial.strain)))

for(i in 2:nstrains){
  lines(echo2$time.progression, echo2$radial.strain[i,], type="l", col=i+1)
}

### Radial Strain Rate
# Plot echo #1 radial strain rate
plot(echo1$time.progression, echo1$radial.strain.rate[1,], type="l", ylab="Radial Strain Rate (1/s)", xlab="Time (ms)", main="Sample Echo 1",
     ylim=c( min(echo1$radial.strain.rate), max(echo1$radial.strain.rate)))

for(i in 2:nstrains){
  lines(echo1$time.progression, echo1$radial.strain.rate[i,], type="l", col=i+1)
}

# Plot echo #2 radial strain
plot(echo2$time.progression, echo2$radial.strain.rate[1,], type="l", ylab="Radial Strain Rate (1/s)", xlab="Time (ms)", main="Sample Echo 2",
     ylim=c( min(echo2$radial.strain.rate), max(echo2$radial.strain.rate)))

for(i in 2:nstrains){
  lines(echo2$time.progression, echo2$radial.strain.rate[i,], type="l", col=i+1)
  }
