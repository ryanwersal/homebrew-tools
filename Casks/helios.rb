cask "helios" do
  version "0.1.0"
  sha256 "c99c778b40588f5258607a77e904a33e83fd3094a6ba31a325a890f326e1a7ea"

  url "https://github.com/ryanwersal/helios/releases/download/v#{version}/Helios.app.zip"
  name "Helios"
  desc "Native macOS launcher"
  homepage "https://github.com/ryanwersal/helios"

  depends_on macos: ">= :sonoma"

  app "Helios.app"

  zap trash: [
    "~/Library/Caches/com.helios.launcher",
    "~/Library/Preferences/com.helios.launcher.plist",
  ]
end
