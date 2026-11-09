cask "stash" do
  version "0.3.1"
  sha256 "1304bf2720a338555c6e721162f965039592f5a551080e35d1d834f03f93b112"

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
