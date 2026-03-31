cask "snapstate" do
  version "1.2.1"
  sha256 "e0552700667ee38f5ae9ecf388e716c6bb190ba87da59e82ea5b17be7b248e24"

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
