class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.90"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.90/scratchmd_darwin_arm64.tar.gz"
      sha256 "d0a4ce9589aaffb76a85b7ed9bd52facca30cd160109c74e349ed7d1fae524f5"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.90/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.90/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.90/scratchmd_linux_amd64.tar.gz"
      sha256 "193c5484aed0a1ba16d50226cbe6bbcec7115f11ca23ac8c28f33464024d16bb"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
