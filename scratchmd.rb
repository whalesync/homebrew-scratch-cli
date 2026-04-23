class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.65"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.65/scratchmd_darwin_arm64.tar.gz"
      sha256 "e57bf7fd7d4bad51340b0a391a92e0cc4300df3e2451186254f093af15b27273"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.65/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.65/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.65/scratchmd_linux_amd64.tar.gz"
      sha256 "e648945198a83bebd67e1eacc7e702c44ac6a5660c3a67ea0e7134de98544b71"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
