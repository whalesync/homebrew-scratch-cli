class ScratchmdAT0385 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.85"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.85/scratchmd_darwin_arm64.tar.gz"
      sha256 "58d4e577d8123d4b156136651db2331d73cdc335a537e7790e76a44a38b95c89"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.85/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.85/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.85/scratchmd_linux_amd64.tar.gz"
      sha256 "c55ec6d68d802ffe327bcd5f854b7c8859e2345fd0ab5fb2d7323d019af29b8b"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
