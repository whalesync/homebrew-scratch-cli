class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.131"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.131/scratchmd_darwin_arm64.tar.gz"
      sha256 "d71187cad7ce4b931be96e6802c86d25037b76929d6acdff8edb86c72ab8977f"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.131/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.131/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.131/scratchmd_linux_amd64.tar.gz"
      sha256 "7a824773989de17ced923a353a638651d9064f0fe08f43c6fac0b0ae11082ff8"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
