class ScratchmdAT03176 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.176"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.176/scratchmd_darwin_arm64.tar.gz"
      sha256 "c544ddc7e393a22b2b0effccd6264905bb57a3d76e0529170b1f515d0f91e40f"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.176/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.176/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.176/scratchmd_linux_amd64.tar.gz"
      sha256 "641b4ede06e694ae4d662c9dece40f4a60154b9b85877c16e68e50991bd7546f"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
