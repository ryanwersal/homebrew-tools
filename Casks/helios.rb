cask "helios" do
  version "0.1.0"
  sha256 "349be4634f8c06dca4e85f6ac394c37e652807e001fa4c07dd9a410c83dff5c9"

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
