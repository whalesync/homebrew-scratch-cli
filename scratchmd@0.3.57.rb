class ScratchmdAT0357 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.57"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.57/scratchmd_darwin_arm64.tar.gz"
      sha256 "c0bf48a796e7e1c5d3cf3e493725612e03622954fbcc36111b04df98516f3457"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.57/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.57/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.57/scratchmd_linux_amd64.tar.gz"
      sha256 "3ac078ae12c630aadc174e175773c09cee4fe6ddc11af0ed0625fb515c71966d"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
