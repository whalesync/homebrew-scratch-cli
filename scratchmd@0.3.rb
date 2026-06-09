class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.112"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.112/scratchmd_darwin_arm64.tar.gz"
      sha256 "25b4c68a902ff7dc3f97a391222350181ad37ea685f96f78eb3cd6f12b579783"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.112/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.112/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.112/scratchmd_linux_amd64.tar.gz"
      sha256 "6f2654ad323f62759e91567716f09a05b79d1ee75a1aaddc0b698c70f6d5f35e"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
