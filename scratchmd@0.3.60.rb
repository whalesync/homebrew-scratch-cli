class ScratchmdAT0360 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.60"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.60/scratchmd_darwin_arm64.tar.gz"
      sha256 "33e0069ab59b8e3a28ca3a43e2b41ceee145270c27ae99bb689e78689d6a3c9c"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.60/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.60/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.60/scratchmd_linux_amd64.tar.gz"
      sha256 "c2177a5cdfb630d001e0c0b1af319ff33475b59317e53927ee54962f3ec98419"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
