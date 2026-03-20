cask "helios" do
  version "0.3.6"
  sha256 "007c48a7b21ca4e68c1ef785a3785f9a0eaa20b152d48b501f8948e142e8a1c9"

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
