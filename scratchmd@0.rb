class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.102"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.102/scratchmd_darwin_arm64.tar.gz"
      sha256 "0c35b3af3154bb8ebc7353b1f0779ac6179ad60a1b809ea5cc72714496ae709f"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.102/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.102/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.102/scratchmd_linux_amd64.tar.gz"
      sha256 "f453a6c1b626e243e1a0650341ffebed40a3a1f0adcd276ff702099eebaf55de"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
