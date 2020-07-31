# Install Krew
(
  set -x; cd "$(mktemp -d)" &&
  curl -fsSLO "https://github.com/kubernetes-sigs/krew/releases/latest/download/krew.{tar.gz,yaml}" &&
  tar zxvf krew.tar.gz &&
  KREW=./krew-"$(uname | tr '[:upper:]' '[:lower:]')_amd64" &&
  "$KREW" install --manifest=krew.yaml --archive=krew.tar.gz &&
  "$KREW" update
)
echo 'export PATH="${PATH}:${HOME}/.krew/bin"' >> ~/.bash_profile
source ~/.bash_profile
# Download Krew plugin list
kubectl krew update
# Install kubectl plugins
kubectl krew install ctx
kubectl krew install ns

# Install k9s
brew install derailed/k9s/k9s
