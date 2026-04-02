class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.52"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.52/scratchmd_darwin_arm64.tar.gz"
      sha256 "af39687324e6966a3326e1b2f6c66c619c59e00513d9d0f3607e4308b2b47806"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.52/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.52/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.52/scratchmd_linux_amd64.tar.gz"
      sha256 "12c52de2d27fb70af9edfac8365da8600019e74d62233193c4febc6d24dc359e"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
