#!/bin/bash

# ====== Color (White only) ======
WHITE="\e[97m"
RESET="\e[0m"

echo -e "${WHITE}Starting Windows 10 VM Docker setup...${RESET}"

# الدخول على الفولدر
echo -e "${WHITE}>> cd windows10vm${RESET}"
cd windows10vm || {
  echo -e "${WHITE}Folder windows10vm not found!${RESET}"
  exit 1
}

# بناء الدوكر
echo -e "${WHITE}>> Building Docker image...${RESET}"
docker build -t windows10-vm . || {
  echo -e "${WHITE}Docker build failed!${RESET}"
  exit 1
}

# تشغيل الكونتينر
echo -e "${WHITE}>> Running Windows 10 VM container...${RESET}"
docker run -it --rm \
  --device /dev/kvm \
  -p 6080:6080 \
  -p 3389:3389 \
  -v windows_data:/data \
  -v windows_iso:/iso \
  windows10-vm

echo -e "${WHITE}Done.${RESET}"
