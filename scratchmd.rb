class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.209"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.209/scratchmd_darwin_arm64.tar.gz"
      sha256 "aaf282b04727ada039ca936bf068b51584dbd7260ff8d474fbc20d24c740a330"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.209/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.209/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.209/scratchmd_linux_amd64.tar.gz"
      sha256 "5a0425735c8b2c22d4223eb64ee9227b4eb7b86b6f8d6089183d225b4d1110b3"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
