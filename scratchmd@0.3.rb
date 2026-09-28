class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.211"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.211/scratchmd_darwin_arm64.tar.gz"
      sha256 "ec28ba3643911b370e80b68444985954ab1d617607f0417c98100f4190b63182"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.211/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.211/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.211/scratchmd_linux_amd64.tar.gz"
      sha256 "7058606269e990b6164d21debb8c8fed58d3e65f65238892990d071800b77fff"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
