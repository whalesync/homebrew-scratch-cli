class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.172"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.172/scratchmd_darwin_arm64.tar.gz"
      sha256 "78fb68ffffd20c9032fc1ce05fb3f78fdb4904d6a9bc3b2809731b7916722f50"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.172/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.172/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.172/scratchmd_linux_amd64.tar.gz"
      sha256 "49471311d015fbb4eadfa909e3d4a0356bccbdf6ddef2b4ce2a011761e2d712a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
