class ScratchmdAT0366 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.66"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.66/scratchmd_darwin_arm64.tar.gz"
      sha256 "bef804f399a77e3206c2aa9efb886f2c8636adcf47e42faaa6fc63de779aeb0a"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.66/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.66/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.66/scratchmd_linux_amd64.tar.gz"
      sha256 "7083cf60b6a82e05b8862695f347ab7c4d90d73a958988330c51f398ce759c41"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
