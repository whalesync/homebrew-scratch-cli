class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.198"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.198/scratchmd_darwin_arm64.tar.gz"
      sha256 "b25768a1faca6e67b10e324f13101d4c148f01a7f5faf36ad17f00c220481b50"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.198/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.198/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.198/scratchmd_linux_amd64.tar.gz"
      sha256 "cc8f33bf7854aba402233392c821f1e0484b43f7bcb7bd3568c1452f0ffd2d20"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
