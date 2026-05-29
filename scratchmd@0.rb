class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.101"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.101/scratchmd_darwin_arm64.tar.gz"
      sha256 "2c06066de0d8f51601f1d59ccffc273ceb837f9d7dbab0b76138bc843ccec7e8"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.101/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.101/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.101/scratchmd_linux_amd64.tar.gz"
      sha256 "7a6317c9bae9309fa75ccfcbe23e1586f1caaf5fb57f3f09ad5b20fe4e3e41ed"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
