class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.154"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.154/scratchmd_darwin_arm64.tar.gz"
      sha256 "5f2aba22ce5387797a2056c894cb403e8bd2a1c766982126949f86ac2e824a70"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.154/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.154/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.154/scratchmd_linux_amd64.tar.gz"
      sha256 "4383f8eef74389df3686082a5b99c0d89d25ad6a300edce7bb6b1831e5caded8"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
