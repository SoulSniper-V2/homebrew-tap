cask "portable-vpn" do
  version "1.1.0"
  sha256 "2a75498d12c2ec90ec2c18784d4108ce2ecac92864b7794c58eb512a1ed3d2fa"

  url "https://github.com/SoulSniper-V2/portable-vpn/releases/download/v#{version}/PortableVPN.dmg"
  name "Portable VPN"
  desc "Menu bar VPN toggle with bundled Tor"
  homepage "https://github.com/SoulSniper-V2/portable-vpn"

  app "PortableVPN.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/PortableVPN.app"]
  end

  zap trash: [
    "~/.portable_tor_data",
    "~/Library/Application Support/com.user.portablevpn",
    "~/Library/Preferences/com.user.portablevpn.plist",
  ]
end
