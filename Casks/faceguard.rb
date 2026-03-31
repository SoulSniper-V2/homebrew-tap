cask "faceguard" do
  version "1.0.0"
  sha256 "915389083aff5b34aad5ed396e9d5d56d99d0d0e8522209fd2024cdc2571862b"

  url "https://github.com/SoulSniper-V2/FaceGuard/releases/download/v#{version}/FaceGuard-v#{version}.dmg"
  name "FaceGuard"
  desc "macOS menu bar app that locks your Mac when you walk away"
  homepage "https://github.com/SoulSniper-V2/FaceGuard"

  app "FaceGuard.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/FaceGuard.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.soulsniper.faceguard.plist",
  ]
end
