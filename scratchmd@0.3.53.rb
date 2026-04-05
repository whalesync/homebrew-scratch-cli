class ScratchmdAT0353 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.53"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.53/scratchmd_darwin_arm64.tar.gz"
      sha256 "44968dfb92a056885affe4ff07e36a4fe0be33373aea6abe2c783bc1e65bcf5b"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.53/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.53/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.53/scratchmd_linux_amd64.tar.gz"
      sha256 "86fc8f64b8757ddf264287506262865c9c5bc9e95214a0200788ab076d296ea4"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
