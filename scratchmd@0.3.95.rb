class ScratchmdAT0395 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.95"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.95/scratchmd_darwin_arm64.tar.gz"
      sha256 "3eda438b259db89011474c816da1fb49f0ba1c775a5cc0e6aa2a2d799c14d7b9"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.95/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.95/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.95/scratchmd_linux_amd64.tar.gz"
      sha256 "d5c8e2ab47779f21234fa6b337adb013eccd6eadf878b5e6a688777d0340c4d1"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
