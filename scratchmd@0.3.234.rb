class ScratchmdAT03234 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.234"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.234/scratchmd_darwin_arm64.tar.gz"
      sha256 "138811ef34c09b7103b2c1533f62f75f07039e4c211ba41c7cdfb9263ca203b5"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.234/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.234/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.234/scratchmd_linux_amd64.tar.gz"
      sha256 "e5a56e7149c36046cc0e3467e2480ba6c6644d0d145573363c49f2c121828d50"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
