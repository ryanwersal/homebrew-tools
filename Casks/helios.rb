cask "helios" do
  version "0.3.4"
  sha256 "bffaa2cb329f7e2b951ff335113524ea4ebdea5fa8b717dcd449e914bbaf9f1a"

  url "https://github.com/ryanwersal/helios/releases/download/v#{version}/Helios.app.zip"
  name "Helios"
  desc "Native macOS launcher"
  homepage "https://github.com/ryanwersal/helios"

  depends_on macos: ">= :sonoma"

  app "Helios.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/Helios.app"],
      sudo: false
  end

  zap trash: [
    "~/Library/Caches/com.helios.launcher",
    "~/Library/Preferences/com.helios.launcher.plist",
  ]
end
