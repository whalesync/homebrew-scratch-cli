class ScratchmdAT0397 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.97"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.97/scratchmd_darwin_arm64.tar.gz"
      sha256 "1004e3719b1fe16cd690b269b55b2781f5d71b637fffe811330c14dee2cbb633"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.97/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.97/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.97/scratchmd_linux_amd64.tar.gz"
      sha256 "d3c4b5820a9e036e244ced608137d37cac217220008f9597bfba878787c89027"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
