class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.144"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.144/scratchmd_darwin_arm64.tar.gz"
      sha256 "fa8ab3485ff269e98cd213b7db6b8c2c5f0ef02ec16e89119d27f7044ed76060"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.144/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.144/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.144/scratchmd_linux_amd64.tar.gz"
      sha256 "6835e05135a22c3884edef3bb99a00dd16ebe717a13ad8edaff91fdaed221c06"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
