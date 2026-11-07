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

---

## Support

If this project saves you time, you can buy me a coffee:

[![Sponsor on GitHub](https://img.shields.io/badge/Sponsor-mi4uu-ec4899?logo=github-sponsors&logoColor=white)](https://github.com/sponsors/mi4uu)
[![PayPal](https://img.shields.io/badge/PayPal-mi4uuuu-00457C?logo=paypal&logoColor=white)](https://www.paypal.com/paypalme/mi4uuuu)

## License

AGPL-3.0-or-later, see [LICENSE](LICENSE).

Need it in a closed-source product, or can't meet the AGPL terms? Commercial licences are available on request: get in touch via [lipinski.work](https://lipinski.work).

By sending a pull request you agree that your contribution may be offered under both the AGPL and a commercial licence.

## Author

Made by [Michał Lipiński](https://lipinski.work) ([GitHub](https://github.com/mi4uu)).
