cask "helios" do
  version "0.3.9"
  sha256 "ff1579fa38503b1ed147ab48fac3d473accb6ac2b6e45df6c728b5bf5a021d33"

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
