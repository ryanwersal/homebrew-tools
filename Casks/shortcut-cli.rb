# Updated by shortcut-cli's release workflow.
cask "shortcut-cli" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "58dfc1988664d4e0db4d657b53f66a8b320c7c08caba30dba3bdc19d22857591",
         intel: "4d6d197cca28752bdbe0dd2b062c668d50373348f0cd9c14f25d52ca15edc264"

  url "https://github.com/ryanwersal/shortcut-cli/releases/download/v#{version}/sc_#{version}_darwin_#{arch}.tar.gz"
  name "Shortcut CLI"
  desc "CLI for Shortcut with explicit read and write operations"
  homepage "https://github.com/ryanwersal/shortcut-cli"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  binary "sc"
  bash_completion "sc.bash"
  zsh_completion "_sc"
  fish_completion "sc.fish"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-d", "com.apple.quarantine", "sc"], chdir: ".", must_succeed: false
    end
  end
end
