cask "stash" do
  version "0.1.0"
  # Replaced by scripts/release.sh on every release.
  sha256 :no_check

  url "https://github.com/brentc22/stash/releases/download/v#{version}/Stash-#{version}.zip",
      verified: "github.com/brentc22/stash/"
  name "Stash"
  desc "Hides menu bar icons behind a chevron until you need them"
  homepage "https://github.com/brentc22/stash"

  # Homebrew only knows up to macOS 27; widen this once a newer symbol exists.
  depends_on macos: :golden_gate

  app "Stash.app"

  zap trash: "~/Library/Preferences/com.brentc22.Stash.plist"

  caveats <<~EOS
    Stash is not notarised by Apple, so macOS will refuse to open it on first launch.

    Install it with:
      brew install --cask --no-quarantine brentc22/stash/stash

    If you already installed it without that flag, clear the quarantine flag once:
      xattr -dr com.apple.quarantine /Applications/Stash.app

    Stash relies on a private framework to control the menu bar. A macOS update can
    break it, which is also why it will never be on the App Store.
  EOS
end
