cask "snapstate" do
  version "2.3.2"
  sha256 "ca52c8c387e243270bb16a4a8f5049cf8d74e705bd03d83c414aabdcb3ee4f9f"

  url "https://github.com/SoulSniper-V2/SnapState/releases/download/v#{version}/SnapState.dmg"
  name "SnapState"
  desc "macOS menu bar app for saving and restoring workspace layouts"
  homepage "https://github.com/SoulSniper-V2/SnapState"

  app "SnapState.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/SnapState.app"]
  end

  zap trash: [
    "~/Library/Application Support/SnapState",
  ]
end
