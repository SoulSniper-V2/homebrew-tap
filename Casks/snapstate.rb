cask "snapstate" do
  version "2.3.1"
  sha256 "bdf24cb099169c327ea3fdba6fc85b3cf6f68e0d19dfbf22f6dd01d3bccc33fb"

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
