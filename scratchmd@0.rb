class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.204"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.204/scratchmd_darwin_arm64.tar.gz"
      sha256 "30a4329043dcc02ee3b5f41b60e04bff266b80dc835f3b0086da2ff3e64d5867"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.204/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.204/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.204/scratchmd_linux_amd64.tar.gz"
      sha256 "6ee50268d929daf8d02046e801afb6901cfb7ce9b31688cd2925398b3156ad67"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
