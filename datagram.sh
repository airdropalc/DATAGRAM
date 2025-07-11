# ========== Color Codes ==========
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[1;36m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# ========== Welcome ==========
echo -e "${CYAN}\n==============================="
echo "     Datagram CLI Installer     "
echo -e "===============================${NC}\n"

# ========== Confirmation ==========
read -p "$(echo -e "${YELLOW}Do you want to install Datagram CLI? (y/n): ${NC}")" INSTALL_CONFIRM

if [[ "$INSTALL_CONFIRM" != "y" && "$INSTALL_CONFIRM" != "Y" ]]; then
  echo -e "${RED}Installation cancelled by user.${NC}"
  exit 0
fi

# ========== Download ==========
echo -e "\n${CYAN}⏬ Downloading datagram-cli...${NC}"
wget -q --show-progress https://github.com/Datagram-Group/datagram-cli-release/releases/latest/download/datagram-cli-x86_64-linux

if [[ ! -f "datagram-cli-x86_64-linux" ]]; then
  echo -e "${RED}❌ Download failed. Exiting.${NC}"
  exit 1
fi

# ========== Install ==========
echo -e "\n${CYAN}⚙️  Installing datagram-cli to /usr/local/bin...${NC}"
sudo mv datagram-cli-x86_64-linux /usr/local/bin/datagram-cli
sudo chmod +x /usr/local/bin/datagram-cli

# ========== License Key Input ==========
echo ""
read -p "$(echo -e "${YELLOW}🔑 Enter License Key: ${NC}")" API_KEY

# ========== Run CLI ==========
echo -e "\n${CYAN}🚀 Running datagram-cli with provided License Key...${NC}\n"
datagram-cli run -- -key "$API_KEY"

# ========== Done ==========
echo -e "\n${GREEN}✅ All done. Datagram CLI is now installed and running.${NC}"
