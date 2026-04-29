class ScratchmdAT0370 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.70"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.70/scratchmd_darwin_arm64.tar.gz"
      sha256 "45403b1cceb96d43fb6dc7e09d9da5ba4b65f580786f6986b9aa4fc248b1f7fc"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.70/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.70/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.70/scratchmd_linux_amd64.tar.gz"
      sha256 "dddfe037d31731bc3ff25d5e904277ca2654e12b8569a5a0ca8e5ad9c4585329"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
