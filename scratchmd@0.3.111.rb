class ScratchmdAT03111 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.111"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.111/scratchmd_darwin_arm64.tar.gz"
      sha256 "c6feb9cb40a6c78b00e246f5d1d551cc7800af103cf7a850b2d40e7e6c5a914a"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.111/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.111/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.111/scratchmd_linux_amd64.tar.gz"
      sha256 "9e4ab60df070803c76d23efff21230b0bb6d0cfbf17f0c5583f0695e1c1d4a37"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
