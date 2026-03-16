cask "helios" do
  version "0.3.3"
  sha256 "8a117aa48a2926fa14dbd6672693900e1b5ce4e1b18b6ffd475a27f4dd29e604"

  url "https://github.com/ryanwersal/helios/releases/download/v#{version}/Helios.app.zip"
  name "Helios"
  desc "Native macOS launcher"
  homepage "https://github.com/ryanwersal/helios"

  depends_on macos: ">= :sonoma"

  no_quarantine true

  app "Helios.app"

  zap trash: [
    "~/Library/Caches/com.helios.launcher",
    "~/Library/Preferences/com.helios.launcher.plist",
  ]
end
