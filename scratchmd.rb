class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.104"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.104/scratchmd_darwin_arm64.tar.gz"
      sha256 "d90a63e293bc90be498ed59092351fdd20e045b39a43ebef1359a77c6dff6fe8"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.104/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.104/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.104/scratchmd_linux_amd64.tar.gz"
      sha256 "69fb7783c1a2e1d9715bb4c4f69113935695b5d61a7fa242ed5eb20e4e0363c4"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
