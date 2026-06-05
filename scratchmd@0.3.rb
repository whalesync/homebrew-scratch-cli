class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.108"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.108/scratchmd_darwin_arm64.tar.gz"
      sha256 "c04cc08b75220e6cb6c25cf1b81f8966e6de871a5509b417e8abcd60e01a8654"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.108/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.108/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.108/scratchmd_linux_amd64.tar.gz"
      sha256 "dc5e6970d9ed897076ce7404a98b793a1a56c518617a68ec335930de3675ff33"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
