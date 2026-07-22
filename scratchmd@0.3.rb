class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.157"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.157/scratchmd_darwin_arm64.tar.gz"
      sha256 "7802862d3f57248b0781b33e0e501ad25fe0e6d9b785d3d0528eadb9ed9b5d7d"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.157/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.157/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.157/scratchmd_linux_amd64.tar.gz"
      sha256 "e83e9ceffa2cb47c9c16748aa3bda68f91d75358009fd7742e7247a6da7db47c"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
