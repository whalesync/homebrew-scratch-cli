class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.228"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.228/scratchmd_darwin_arm64.tar.gz"
      sha256 "92e09b058ef772189b5d6019b51193f60f7c41b2dac75f70a60ad6306d731d3b"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.228/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.228/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.228/scratchmd_linux_amd64.tar.gz"
      sha256 "88354d8e8a0476b9a02160029a7967d00e0f1c8185fc3694fbdbfe8a3a7c392d"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
