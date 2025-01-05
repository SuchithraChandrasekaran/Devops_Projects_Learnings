#!/bin/bash

# Update the threshold for MPHASIS
sed -i 's/^MPHASIS=.*/MPHASIS=2550/' nse_alerts.cfg

# Remove the alert for INFY
sed -i '/^INFY=/d' nse_alerts.cfg

# Add a new alert for HDFC with a threshold of 1700
echo "HDFC=1700" >> nse_alerts.cfg

echo "Updated Stock Alert Configuration:"
cat nse_alerts.cfg
