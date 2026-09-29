class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.212"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.212/scratchmd_darwin_arm64.tar.gz"
      sha256 "90ab72057b3dbb7104244e606742e38488f654beb60d0afbafeb95148904cffc"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.212/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.212/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.212/scratchmd_linux_amd64.tar.gz"
      sha256 "d8b1ecc067e2e8942dd1286691215b2b38df3c460323781571703fcf1ce99192"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
