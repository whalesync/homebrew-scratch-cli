class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.167"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.167/scratchmd_darwin_arm64.tar.gz"
      sha256 "286e44ddf1f2d8f165699b6828a5bc93d3b8658baca1fdcb238714460d4ba906"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.167/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.167/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.167/scratchmd_linux_amd64.tar.gz"
      sha256 "5bee8129d4f652e195f580600fa12a7000a086a8cb6fb3388c8b2906aa6f2065"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
