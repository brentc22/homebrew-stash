# brentc22/homebrew-stash

Homebrew tap for [Stash](https://github.com/brentc22/stash) — a menu bar hider for macOS 27.

```sh
brew install --cask brentc22/stash/stash
xattr -dr com.apple.quarantine /Applications/Stash.app
```

The second line is required: Stash is ad-hoc signed and not notarised by Apple, so macOS refuses
to open it on first launch while the quarantine flag is set. Run it again after every
`brew upgrade --cask stash`. (Older instructions used `--no-quarantine`; current Homebrew has
removed that option.)

## Why a tap and not homebrew/cask

The official cask repository only accepts projects above a popularity threshold (75+ stars, or
30+ forks or watchers). Until Stash gets there, this tap is the supported way to install it.
