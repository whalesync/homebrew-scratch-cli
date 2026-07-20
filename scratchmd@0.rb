class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.155"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.155/scratchmd_darwin_arm64.tar.gz"
      sha256 "a5277f4416c02a1bcbdebda7de850cf31d7506a8b5e74339eff01a1d3d6440fc"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.155/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.155/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.155/scratchmd_linux_amd64.tar.gz"
      sha256 "41fe6ec19cc223fcd16d718b696e154d7c19788583695739ce0111c4c988b43b"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
