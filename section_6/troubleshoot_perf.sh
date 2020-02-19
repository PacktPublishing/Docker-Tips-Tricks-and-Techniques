# --- CPU ----

# CPU shares (relative weight)
-c, --cpu-shares=0	

# Number of CPUs. Number is a fractional number. 0.000 means no limit.
--cpus=0.000	

# Limit the CPU CFS (Completely Fair Scheduler) period
--cpu-period=0	

# CPUs in which to allow execution (0-3, 0,1)
--cpuset-cpus=""	

# --- DISK --- 
# Block IO weight (relative device weight, format: DEVICE_NAME:WEIGHT)
--blkio-weight-device=""

# Limit read rate from a device (format: <device-path>:<number>[<unit>]). Number is a positive integer. Unit can be one of kb, mb, or gb.	
--device-read-bps=""	

# Limit write rate to a device (format: <device-path>:<number>[<unit>]). Number is a positive integer. Unit can be one of kb, mb, or gb.
--device-write-bps=""	

# Limit read rate (IO per second) from a device (format: <device-path>:<number>). Number is a positive integer.
--device-read-iops=""	

# Limit write rate (IO per second) to a device (format: <device-path>:<number>). Number is a positive integer.
--device-write-iops=""	

# Tune a container’s memory swappiness behavior. Accepts an integer between 0 and 100.
--memory-swappiness=""	