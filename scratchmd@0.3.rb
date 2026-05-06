class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.75"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.75/scratchmd_darwin_arm64.tar.gz"
      sha256 "fba4f40cca61426bb4b496d89695b2c32d80014f8a447240c5769b9428871f6c"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.75/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.75/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.75/scratchmd_linux_amd64.tar.gz"
      sha256 "1813e0994a11b56384735fb35d517df6bd82ad770c0dbff7f9a6178dc86ff079"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
