class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.120"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.120/scratchmd_darwin_arm64.tar.gz"
      sha256 "089bc98b29e6ebdd9ccd32107f41106c8eedca3131223d799d515042caf92cad"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.120/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.120/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.120/scratchmd_linux_amd64.tar.gz"
      sha256 "4963545534fbbe0e8bc08b0e270359b25f7c63f82da86dc1fa26f80641eecb27"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
