cask "stash" do
  version "0.3.0"
  sha256 "0f7943c2bf3a330177dc3fda5d6dd253af28bee9b52c7d6c5fc4488eb7e3f816"

  url "https://github.com/brentc22/stash/releases/download/v#{version}/Stash-#{version}.zip"
  name "Stash"
  desc "Hides menu bar icons behind a single arrow until you need them"
  homepage "https://github.com/brentc22/stash"

  depends_on macos: :golden_gate

  app "Stash.app"

  zap trash: "~/Library/Preferences/com.brentc22.Stash.plist"

  caveats <<~EOS
    Stash is not notarised by Apple, so macOS will refuse to open it until the
    quarantine flag is cleared. After installing or upgrading, run once:
      xattr -dr com.apple.quarantine /Applications/Stash.app

    Stash relies on a private framework to control the menu bar. A macOS update can
    break it, which is also why it will never be on the App Store.
  EOS
end
