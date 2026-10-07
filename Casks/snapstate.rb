cask "snapstate" do
  version :latest
  sha256 :no_check

  url "https://getsnapstate.com/SnapState.dmg"
  name "SnapState"
  desc "Save and restore window, app and monitor-layout workspaces"
  homepage "https://getsnapstate.com/"

  depends_on macos: :sequoia

  app "SnapState.app"

  uninstall quit: "com.snapstate.app"

  zap trash: [
    "~/Library/Application Support/SnapState",
    "~/Library/Caches/com.snapstate.app",
    "~/Library/HTTPStorages/com.snapstate.app",
    "~/Library/Preferences/com.snapstate.app.plist",
  ]

  caveats <<~EOS
    SnapState is paid software. It requires a license key, available from https://getsnapstate.com.
    SnapState requires macOS 15.7 or later.
  EOS
end
