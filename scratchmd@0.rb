class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.86"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.86/scratchmd_darwin_arm64.tar.gz"
      sha256 "6d752b3d1b6542c93371ce5515209dbeb81bebc98e1f42c77258f24d6738d168"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.86/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.86/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.86/scratchmd_linux_amd64.tar.gz"
      sha256 "e4de3604ede67c8b9ea9d479de4b0f41065bcf6f03b599c2243947907063cf77"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
