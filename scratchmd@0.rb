class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.192"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.192/scratchmd_darwin_arm64.tar.gz"
      sha256 "4c0e73bacf88effcf570352a107c382e1f7785b1765c285cdd43dfae59568181"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.192/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.192/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.192/scratchmd_linux_amd64.tar.gz"
      sha256 "c5abb1f496a6ba16d5c58a8d2a2dc9892998de8413c4437c4fc371d08a4dbe9f"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
