class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.49"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.49/scratchmd_darwin_arm64.tar.gz"
      sha256 "31af71501b9104b77d7d50e1efdb46286310179170274bc5da727c1fda584603"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.49/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.49/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.49/scratchmd_linux_amd64.tar.gz"
      sha256 "e68f0c1781d3a0bb46aeed6729c1c9d488be4fcc4e70c5cea181ede03c6db27d"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
