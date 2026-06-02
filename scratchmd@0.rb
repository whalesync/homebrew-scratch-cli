class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.105"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.105/scratchmd_darwin_arm64.tar.gz"
      sha256 "90cf810a9db28ab80d4e15a2a52f379009ddc54efa6d187907adeabf41572827"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.105/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.105/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.105/scratchmd_linux_amd64.tar.gz"
      sha256 "c3bced0e2dbc8e311fdd87c832b4f17b23fd4fd1b5e357d95a880ea42c02030b"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
