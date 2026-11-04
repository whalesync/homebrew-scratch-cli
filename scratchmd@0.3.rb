class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.237"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.237/scratchmd_darwin_arm64.tar.gz"
      sha256 "91100cb16d663d1def3b7e33f0aa33365eaddf5f42d54c03cb34c3bb76f732ae"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.237/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.237/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.237/scratchmd_linux_amd64.tar.gz"
      sha256 "b35c5e16bca6a4863d455218f6b4a17d0a91cb364bcf211d09abefe05a04788a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
