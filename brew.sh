## central installer
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

## add to path
grep -q 'eval "$(/opt/homebrew/bin/brew shellenv)"' ~/.zprofile || echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
source ~/.zprofile

## default installation
brew install git gh sevenzip tree
brew install --cask claude-code
brew install --cask google-chrome

# cleaning up temp repositories
brew cleanup --prune=all

