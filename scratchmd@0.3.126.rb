class ScratchmdAT03126 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.126"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.126/scratchmd_darwin_arm64.tar.gz"
      sha256 "859b219f3a3c0197d37b9697549b3aee1470c49b44ded218238057019dfc8053"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.126/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.126/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.126/scratchmd_linux_amd64.tar.gz"
      sha256 "97f5d09ac9de078731dd6581119a5b149c91d8bb993e7e4b0b39d9a5021bed22"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
