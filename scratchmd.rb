class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.170"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.170/scratchmd_darwin_arm64.tar.gz"
      sha256 "1f89eb19149e6bb5fcb65a7a4969ae954c520cecc003899440ba99c96f70f216"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.170/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.170/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.170/scratchmd_linux_amd64.tar.gz"
      sha256 "f0267665a0df848f416460eaff1ffa7dab859db95a97e0690095f4c5492587ad"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
