#!/bin/bash
sudo sed -i "s/%sudo\tALL=(ALL:ALL) ALL/%sudo\tALL=(ALL:ALL)  NOPASSWD:ALL/g" /etc/sudoers