class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.94"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.94/scratchmd_darwin_arm64.tar.gz"
      sha256 "917c4cc6d9d0670289198229d4a6f7c7c07f7ede779f2fbe8b6c725c58a34628"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.94/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.94/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.94/scratchmd_linux_amd64.tar.gz"
      sha256 "1a14b626cafebbfdce8bef50bb2cd67d9858aa51a706ef9ec296c1746964d254"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
