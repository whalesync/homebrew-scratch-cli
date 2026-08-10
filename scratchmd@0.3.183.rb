class ScratchmdAT03183 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.183"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.183/scratchmd_darwin_arm64.tar.gz"
      sha256 "cff4d99677d419b28b9acc7bbe103f6cdf7e90a7b7a0f6e82efbe863d6f2d95e"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.183/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.183/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.183/scratchmd_linux_amd64.tar.gz"
      sha256 "8970a0d3a50de20a17d1c94ca2dfe73e4037464b311dffe0ae5aba891fa17d17"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
