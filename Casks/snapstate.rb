cask "snapstate" do
  version "1.0.0"
  sha256 "f77390ba51d43db9660d88bc522b79ed0f63dd5fefe03b0796f319479d6b2286"

  url "https://github.com/SoulSniper-V2/SnapState/releases/download/v#{version}/SnapState.dmg"
  name "SnapState"
  desc "macOS menu bar app for saving and restoring workspace layouts"
  homepage "https://github.com/SoulSniper-V2/SnapState"

  app "SnapState.app"

  zap trash: [
    "~/Library/Application Support/SnapState",
  ]
end
