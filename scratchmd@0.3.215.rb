class ScratchmdAT03215 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.215"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.215/scratchmd_darwin_arm64.tar.gz"
      sha256 "4cca699652fa1aaf7758a4f1d36a7281e1cce03b69256ba6b98e778b8fe20fd6"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.215/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.215/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.215/scratchmd_linux_amd64.tar.gz"
      sha256 "323eca05e86d5b37075f389454c1dcba9343382cba47ff321fa87c2260dd4832"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
