class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.83"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.83/scratchmd_darwin_arm64.tar.gz"
      sha256 "cc5b4e8641142f3c2921eb1188d192ae5fc57ee809989a72afe032c5e4dac763"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.83/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.83/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.83/scratchmd_linux_amd64.tar.gz"
      sha256 "5b1fe0d0a154a60f8f5ddf872d125d307a3d2259aad978379d40a063cfab6ff1"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
