class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.179"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.179/scratchmd_darwin_arm64.tar.gz"
      sha256 "ac5f73880137a17d7642fbadb25b1a115aed9aa50c47867c86585bfacc45ad68"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.179/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.179/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.179/scratchmd_linux_amd64.tar.gz"
      sha256 "80e84ceb937215a1c96964dbedde74edd6f5198594c4ab4418f29b9fffdce7f7"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
