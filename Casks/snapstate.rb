cask "snapstate" do
  version "2.3.4"
  sha256 "445cbc4d16345cd10a0cd26ca8445894a5bfe34fd1ed2f32934f110cf68ee8f7"

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
