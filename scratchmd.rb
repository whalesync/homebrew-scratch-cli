class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.84"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.84/scratchmd_darwin_arm64.tar.gz"
      sha256 "c5ce01af0bd23aa52575051d501f5b2766afcb79c7fa6361cda64c635552c998"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.84/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.84/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.84/scratchmd_linux_amd64.tar.gz"
      sha256 "f28dabffe074588c414f5af24d011c75a38b097dbe897a670022a7b040e64aa1"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
