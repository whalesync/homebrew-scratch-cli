class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.135"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.135/scratchmd_darwin_arm64.tar.gz"
      sha256 "d170c3fe233db455da1fccd301b85ed74041b0c0b50c78b2f17635eaa928fe3c"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.135/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.135/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.135/scratchmd_linux_amd64.tar.gz"
      sha256 "43d2742ce8ded7009ae62247b845833144d8074c5036f3ab1213a0d08564b3ad"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
