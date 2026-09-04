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

Browser Router is signed ad-hoc rather than notarized by Apple ($99/year, and it is a free
project), so Gatekeeper would otherwise refuse to open the downloaded copy. The cask clears
the quarantine flag in a `postflight` block — that is what makes `brew install` enough on
its own, and it is right there in [the cask](Casks/browser-router.rb) if you want to read it
before running it.
