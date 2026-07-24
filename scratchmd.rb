class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.160"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.160/scratchmd_darwin_arm64.tar.gz"
      sha256 "1e8426d81e56b06f65c851d7e19fc8d83771ad8facc21857b299df7f8421f017"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.160/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.160/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.160/scratchmd_linux_amd64.tar.gz"
      sha256 "3a08433f3c52c292e5fbae2b17d99d0a5649fe4c4f73c357a01d3576a8437b75"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
