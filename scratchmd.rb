class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.213"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.213/scratchmd_darwin_arm64.tar.gz"
      sha256 "24e2ae1ffc9b2e8c0e8e92585705700e928e4711431b66a7c15233b29b7ec647"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.213/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.213/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.213/scratchmd_linux_amd64.tar.gz"
      sha256 "10f29ff5bc68469e5bd352024d15001dd8d7139cbb16fb1a74eb59c937577255"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
