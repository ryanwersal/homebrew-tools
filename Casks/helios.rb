cask "helios" do
  version "0.2.0"
  sha256 "adbc23c904a69b494573a79a1c59630871c7177ec72f6af44150bd4d53b8b2c2"

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
