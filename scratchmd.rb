class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.118"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.118/scratchmd_darwin_arm64.tar.gz"
      sha256 "ff8e0bd008a9b40f8c1674c1a64b219c391d8442dae504cef8439d5400e38375"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.118/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.118/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.118/scratchmd_linux_amd64.tar.gz"
      sha256 "e3eec7518f2d26e2ee2f1acedf79cab2e7f4cc16addc6118c2b7389be82120ff"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
