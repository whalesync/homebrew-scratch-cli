class ScratchmdAT03152 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.152"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.152/scratchmd_darwin_arm64.tar.gz"
      sha256 "ee99989f2d3eb5b3ca129e867601418e781a95455645d98960cc2d3abbbe1fdc"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.152/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.152/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.152/scratchmd_linux_amd64.tar.gz"
      sha256 "ef2b32c601df6d4849f27aacf1c539c8be8fa214c3030ac2240eb1f23b1f054b"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
