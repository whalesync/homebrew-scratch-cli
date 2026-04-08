class ScratchmdAT0356 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.56"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.56/scratchmd_darwin_arm64.tar.gz"
      sha256 "26cfa263970d824cda9f7f1aab5bfc1ee9825982121ec30f46c7f34dbfa7ebe9"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.56/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.56/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.56/scratchmd_linux_amd64.tar.gz"
      sha256 "40dd70e481612ae26b0cd0edd5b77740d48a2f5ac09c11ebc299eabdc9ed844e"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
