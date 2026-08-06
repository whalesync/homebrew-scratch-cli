class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.175"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.175/scratchmd_darwin_arm64.tar.gz"
      sha256 "f161ceb116daf59766bba1e5b632e7ee3d6e1cc4b50542506aa8f13d0719d307"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.175/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.175/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.175/scratchmd_linux_amd64.tar.gz"
      sha256 "7fc828bdbda3d38b279b17abb2891faecb1c81cf199f1ef06a702b2b3d7c12f6"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
