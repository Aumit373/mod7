# Variables
VERSION="v1.30.0"
URL="https://dl.k8s.io/release/${VERSION}/bin/linux/amd64/kubectl"
INSTALL_DIR="/usr/local/bin"

# Download kubectl
curl -LO "$URL"

# Make it executable and move it
chmod +x kubectl
sudo mv kubectl "$INSTALL_DIR/"

# Verify installation
kubectl version --client

# Clean up
echo "kubectl installation complete"

