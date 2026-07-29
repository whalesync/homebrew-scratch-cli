class ScratchmdAT03164 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.164"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.164/scratchmd_darwin_arm64.tar.gz"
      sha256 "17c4dc7df492e7d668f3eb3f89270c074f3aa0ddcbfda6f459cb642254ff1549"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.164/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.164/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.164/scratchmd_linux_amd64.tar.gz"
      sha256 "acdc2e734d576ae4fb62bc367bc4f612bfb169c09a5749738c42c4c6def3a88e"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
