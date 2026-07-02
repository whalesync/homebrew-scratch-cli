class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.137"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.137/scratchmd_darwin_arm64.tar.gz"
      sha256 "4dbffa8ec400eedf460006bd294b59752e9ee3c801de6136e9ba9ddc60def233"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.137/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.137/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.137/scratchmd_linux_amd64.tar.gz"
      sha256 "19d0497d3f663d85a0384289d10f2d7dac2135314e8744b213b05ffbe901790a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
