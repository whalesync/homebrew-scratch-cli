class ScratchmdAT0379 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.79"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.79/scratchmd_darwin_arm64.tar.gz"
      sha256 "65c88711dc65620e56d207f9c654327c6a61a3afcb2c6c848d694533820cf372"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.79/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.79/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.79/scratchmd_linux_amd64.tar.gz"
      sha256 "c4ba2c43f235d9c6dd8fb2c467f497a1643fbf12c51d2cce0e62548037ffa542"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
