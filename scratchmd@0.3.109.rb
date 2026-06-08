class ScratchmdAT03109 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.109"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.109/scratchmd_darwin_arm64.tar.gz"
      sha256 "33a10908bec9bd36756e2cb570b26be0258b951455b63f9eacedf85f90f986be"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.109/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.109/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.109/scratchmd_linux_amd64.tar.gz"
      sha256 "abb202cdc44141659bfe524a357a2ac1f3880bc843bcd4d6ab3ce0992b9576cc"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
