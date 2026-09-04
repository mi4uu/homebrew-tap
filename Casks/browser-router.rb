cask "browser-router" do
  version "0.1.0"
  sha256 "8c9dcb7f458c27f1962ae6d63ccff7cbe24a7dadead1ae76557cd5c013c47e4f"

  url "https://github.com/mi4uu/macos-browser-router/releases/download/v#{version}/BrowserRouter-#{version}.zip"
  name "Browser Router"
  desc "Menubar app that routes each link to the right browser or browser profile"
  homepage "https://github.com/mi4uu/macos-browser-router"

  depends_on macos: ">= :sonoma"

  app "Browser Router.app"

  # The app is signed ad-hoc rather than notarized by Apple, so Gatekeeper would refuse to
  # open the downloaded copy. Homebrew dropped --no-quarantine in 6.0, so clear it here.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Browser Router.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/BrowserRouter",
    "~/Library/Preferences/com.mi4u.browserrouter.plist",
  ]
end
