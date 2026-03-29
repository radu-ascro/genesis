install_brew_casks() {
  local brew_casks=(
    "arc"
    "chatgpt"
    "cleanshot"
    "codex"
    "codex-app"
    "cursor"
    "cursor-cli"
    "discord"
    "figma"
    "github"
    "google-chrome"
    "imageoptim"
    "notion"
    "warp"
    "whatsapp"
    "zoom"
  )

  local cask
  for cask in "${brew_casks[@]}"; do
    if brew list --cask "${cask}" >/dev/null 2>&1; then
      echo "Skipping ${cask}; already installed"
      continue
    fi

    brew install --cask "${cask}"
  done
}
