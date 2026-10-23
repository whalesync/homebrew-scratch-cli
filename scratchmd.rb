class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.221"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.221/scratchmd_darwin_arm64.tar.gz"
      sha256 "c4ba0e521ec86405bca0f2bde609adbc68cc952e0ad99719cf577b1a1863cfeb"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.221/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.221/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.221/scratchmd_linux_amd64.tar.gz"
      sha256 "12ae6e025fb2d9cfdae01304bfb5c804b03996a653daf4e62ee80ba875d9aaff"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
