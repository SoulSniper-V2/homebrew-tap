cask "clipstash" do
  version "2.2.0"
  sha256 "5953e1ce2cac361a3ef9956f7998b1fbe010a0e07cc3d99cc66c233452e0a72d"

  url "https://github.com/SoulSniper-V2/ClipStash/releases/download/v#{version}/ClipStash-V2.dmg"
  name "ClipStash"
  desc "macOS menu bar clipboard manager with AI-powered search"
  homepage "https://github.com/SoulSniper-V2/ClipStash"

  app "ClipStash.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ClipStash.app"]
  end

  zap trash: [
    "~/Library/Application Support/ClipStash",
    "~/Library/Preferences/com.clipstash.app.plist",
  ]
end
