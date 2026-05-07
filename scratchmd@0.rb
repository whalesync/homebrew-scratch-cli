class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.78"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.78/scratchmd_darwin_arm64.tar.gz"
      sha256 "e9c69d1764d62e8eb9f29d99e3090472990fd56478b8813dd528c89b112f4a06"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.78/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.78/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.78/scratchmd_linux_amd64.tar.gz"
      sha256 "5bbd6f305fb3a38b9b546d2b113ceb7c4902db9524d159b060fe7e7483806ba9"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
