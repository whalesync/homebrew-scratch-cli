class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.99"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.99/scratchmd_darwin_arm64.tar.gz"
      sha256 "71cda85ea4b1d33dfdbacb8730f132cae3a12c7948d4f7fdc8b4cf0a348d48bb"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.99/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.99/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.99/scratchmd_linux_amd64.tar.gz"
      sha256 "a08c568586e0578a5985c36112115e514a750d3f76760f9ecc032ea9d37dde22"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
