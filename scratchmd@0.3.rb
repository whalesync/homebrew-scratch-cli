class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.217"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.217/scratchmd_darwin_arm64.tar.gz"
      sha256 "507b2fc91cc2455be79256ece19f2587b2c15df6509900cec704c8295c7adb38"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.217/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.217/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.217/scratchmd_linux_amd64.tar.gz"
      sha256 "2adc31fbdf21526219dd261c2abaf5fd03842561a0264e7f95016b6194932995"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
