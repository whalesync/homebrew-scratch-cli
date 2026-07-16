class ScratchmdAT03150 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.150"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.150/scratchmd_darwin_arm64.tar.gz"
      sha256 "820ebd63b1cad823c40ff89316525618e449d17a048e0236ff7a4af1458ebc20"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.150/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.150/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.150/scratchmd_linux_amd64.tar.gz"
      sha256 "38845fb1a4a2f158554fb77c70d3e53a08d042fbd1c73bed60a25cc5b896c7e9"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
