class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.67"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.67/scratchmd_darwin_arm64.tar.gz"
      sha256 "148675d1c73d99dfa94e1f742d92badc0010852a23aeee1da73825d8c586ed21"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.67/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.67/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.67/scratchmd_linux_amd64.tar.gz"
      sha256 "53e9571542c9389f41652e0afe4ba704d45a771a9323c02a1bb7d33790aed056"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
