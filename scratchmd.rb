class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.230"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.230/scratchmd_darwin_arm64.tar.gz"
      sha256 "8b8131d5eee108588fa73893e4c7d24287ae9c9b3a3d61647fc69b4e573950f9"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.230/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.230/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.230/scratchmd_linux_amd64.tar.gz"
      sha256 "d31d48a6510de8c83e624b2e502cadb481c21ba8b21aa6f98e379e4ef95a2c7c"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
