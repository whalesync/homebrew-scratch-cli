class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.189"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.189/scratchmd_darwin_arm64.tar.gz"
      sha256 "49a86aae9478da4afbac8872da13f95e133d391087ecb62a7e040f55336d001e"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.189/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.189/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.189/scratchmd_linux_amd64.tar.gz"
      sha256 "947e5b166d8020251276bc62dc4c710b21b898c30144722146804f952ae6d933"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
