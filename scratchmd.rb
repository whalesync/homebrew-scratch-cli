class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.140"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.140/scratchmd_darwin_arm64.tar.gz"
      sha256 "faa7650797d87b0dff57a3f5a0e2c5c14cce7fd024b61e7720c1128d18e10798"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.140/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.140/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.140/scratchmd_linux_amd64.tar.gz"
      sha256 "99a32e163e4fdf7b5aac5305a683cce13d4a5d6951b86d1b6ea39fe2915bc41a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
