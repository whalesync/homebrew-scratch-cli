class ScratchmdAT03184 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.184"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.184/scratchmd_darwin_arm64.tar.gz"
      sha256 "d805542b8b7d2ddb321942d7193b9fce0e10f8968add9d6fb8decc947da84462"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.184/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.184/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.184/scratchmd_linux_amd64.tar.gz"
      sha256 "8fda09a37e9df4e2401094f8d9e482901227bad5ef0e030b91a8885e07e6b290"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
