class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.63"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.63/scratchmd_darwin_arm64.tar.gz"
      sha256 "c715b869cb6b844fc09c54cd3cd2f6328dc8a60e4c3da61adfb375f440be57a2"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.63/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.63/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.63/scratchmd_linux_amd64.tar.gz"
      sha256 "9a6f7b1bd6af4612ab9b8b3969fa9a7938751d4d083067f61b5d3791378b426d"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
