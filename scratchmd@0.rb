class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.81"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.81/scratchmd_darwin_arm64.tar.gz"
      sha256 "75b544296881181f11b98e4713b437642082785d39543692e6b8887788394280"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.81/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.81/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.81/scratchmd_linux_amd64.tar.gz"
      sha256 "ac56dacb11fe9236be10abf4fce04b1ff03a6e9455916552ac6defbd953018f8"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
