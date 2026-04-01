cask "clipstash" do
  version "2.3.0"
  sha256 "bf586e4834e55d5e0f858a0ea8a2011e49751474bc157bce97ebca038e464ee9"

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
