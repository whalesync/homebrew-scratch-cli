class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.177"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.177/scratchmd_darwin_arm64.tar.gz"
      sha256 "cf39b0c06a9b69c55e70cfcc4826fd13c8951dbfbb62b6e76b8d642163ac4554"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.177/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.177/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.177/scratchmd_linux_amd64.tar.gz"
      sha256 "9cf0572c873c1989b4b0c926a813a93b056d23b6ce601d80b3b07cc635515e22"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
