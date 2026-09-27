cask "snapstate" do
  version :latest
  sha256 :no_check

  url "https://getsnapstate.com/SnapState.dmg"
  name "SnapState"
  desc "Save and restore window, app and monitor-layout workspaces"
  homepage "https://getsnapstate.com/"

  depends_on macos: ">= :sequoia"

  app "SnapState.app"

  zap trash: [
    "~/Library/Application Support/SnapState",
  ]

  caveats "SnapState is paid software. It requires a license key, available from https://getsnapstate.com."
end
