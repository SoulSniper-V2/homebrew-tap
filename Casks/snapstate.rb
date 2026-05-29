cask "snapstate" do
  version "2.3.3"
  sha256 "020db8185df033899c08a3d577b92733cbf69e50bf0eac1c0ae0dbdf144945e8"

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
