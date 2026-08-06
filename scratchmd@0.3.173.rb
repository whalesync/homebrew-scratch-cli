class ScratchmdAT03173 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.173"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.173/scratchmd_darwin_arm64.tar.gz"
      sha256 "8e8a32d4018af2776c1899fec433237c6f41f2923b3b7013ac90c35f02c3a60e"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.173/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.173/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.173/scratchmd_linux_amd64.tar.gz"
      sha256 "ae132d3cea36560f2a81a96c5c2552b7f24faf58199a3ff05d97ee298cd3097b"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
