#!/bin/bash
#
echo "       Welcome `users`       "
echo "Copyright (c) Benjamin-Dobell"
echo "*****************************"
curl -o ~/nvidia-update.sh https://raw.githubusercontent.com/Benjamin-Dobell/nvidia-update/master/nvidia-update.sh

chmod +x ~/nvidia-update.sh

sudo ~/nvidia-update.sh