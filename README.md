# mi4uu/homebrew-tap

Homebrew tap for my apps.

```sh
brew tap mi4uu/tap
brew install --cask browser-router
```

## Casks

| Cask | What it is |
| --- | --- |
| [`browser-router`](Casks/browser-router.rb) | [Browser Router](https://github.com/mi4uu/macos-browser-router) — menubar app that sends each link to the right browser or browser profile |

Browser Router is signed ad-hoc rather than notarized by Apple, so macOS quarantines it
after a normal `brew install --cask`. Either install it without the quarantine flag:

```sh
brew install --cask --no-quarantine browser-router
```

or clear the flag afterwards:

```sh
xattr -dr com.apple.quarantine "/Applications/Browser Router.app"
```
