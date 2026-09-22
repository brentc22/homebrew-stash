# brentc22/homebrew-stash

Homebrew tap for [Stash](https://github.com/brentc22/stash) — a menu bar hider for macOS 27.

```sh
brew install --cask --no-quarantine brentc22/stash/stash
```

`--no-quarantine` is required: Stash is not notarised by Apple, so without it macOS refuses to
open the app on first launch. If you left it out, you can clear the flag afterwards:

```sh
xattr -dr com.apple.quarantine /Applications/Stash.app
```

## Why a tap and not homebrew/cask

The official cask repository only accepts projects above a popularity threshold (75+ stars, or
30+ forks or watchers). Until Stash gets there, this tap is the supported way to install it.
