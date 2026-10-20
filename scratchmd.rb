class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.218"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.218/scratchmd_darwin_arm64.tar.gz"
      sha256 "741f057d18e4231362ee6b1b00902c88faf1b20780a78df89952aff04578ba46"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.218/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.218/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.218/scratchmd_linux_amd64.tar.gz"
      sha256 "eadcc8ab1d956e2aabe8ae5ee22d56e93f7bb1d5819c95ddfe0eee69ee27120a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
