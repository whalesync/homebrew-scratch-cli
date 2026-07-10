class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.146"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.146/scratchmd_darwin_arm64.tar.gz"
      sha256 "8df258736148db336e3a22d0ab6187217d6e07c5f9d9b5f8168f9c7b0b68b918"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.146/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.146/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.146/scratchmd_linux_amd64.tar.gz"
      sha256 "e1db93484ebaf33a40a975ae2c1e970ff2221e805c2899881da11db27636c74a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
