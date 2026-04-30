class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.71"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.71/scratchmd_darwin_arm64.tar.gz"
      sha256 "a7c78cfaa633ea839b10b3ac80e18bd81c4121fcec8a87cb064749e522622a71"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.71/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.71/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.71/scratchmd_linux_amd64.tar.gz"
      sha256 "c0848fb04009a5f14531e1ca4d5a41ea35e7dfe81951baecfca64a0fdead6203"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
