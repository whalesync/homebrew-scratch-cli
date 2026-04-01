cask "scratch-desktop@0.2.1" do
  version "0.2.1"

  if Hardware::CPU.arm?
    url "https://github.com/whalesync/scratch-cli/releases/download/v0.2.1-desktop/Scratch%20Desktop-0.2.1-arm64.zip"
    sha256 ""
  else
    url "https://github.com/whalesync/scratch-cli/releases/download/v0.2.1-desktop/Scratch%20Desktop-0.2.1-x64.zip"
    sha256 ""
  end

  name "Scratch Desktop"
  desc "Scratch content management desktop app"
  homepage "https://github.com/whalesync/scratch-cli"

  app "Scratch Desktop.app"

  zap trash: [
    "~/Library/Application Support/Scratch Desktop",
    "~/Library/Preferences/com.scratch.desktop.plist",
    "~/Library/Caches/com.scratch.desktop",
  ]
end
