cask "browser-router" do
  version "0.1.0"
  sha256 "8c9dcb7f458c27f1962ae6d63ccff7cbe24a7dadead1ae76557cd5c013c47e4f"

  url "https://github.com/mi4uu/macos-browser-router/releases/download/v#{version}/BrowserRouter-#{version}.zip"
  name "Browser Router"
  desc "Menubar app that routes each link to the right browser or browser profile"
  homepage "https://github.com/mi4uu/macos-browser-router"

  depends_on macos: ">= :sonoma"

  app "Browser Router.app"

  zap trash: [
    "~/Library/Application Support/BrowserRouter",
    "~/Library/Preferences/com.mi4u.browserrouter.plist",
  ]
end
