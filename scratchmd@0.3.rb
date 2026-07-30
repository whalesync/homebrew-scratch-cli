class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.168"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.168/scratchmd_darwin_arm64.tar.gz"
      sha256 "d6928e2f7fbc29ec3bc973888d88a4b76f0d3d3199f1dfe762dce771aaf34d10"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.168/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.168/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.168/scratchmd_linux_amd64.tar.gz"
      sha256 "d12420b362b88772a19f27b02f0a55597c2f6308ce961789e7690573c7cc1c19"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
