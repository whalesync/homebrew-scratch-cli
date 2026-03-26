class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.47"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.47/scratchmd_darwin_arm64.tar.gz"
      sha256 "b4d1811c3de3abfd4d54e5c70bed70273e012470490e359e84e63c13f769362a"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.47/scratchmd_darwin_amd64.tar.gz"
      sha256 "1f714e6d16488fed5d3e55e8a2e136ee2f90cab1af046316746c5a4e6eb92621"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.47/scratchmd_linux_arm64.tar.gz"
      sha256 "178ac7455bb2ec7c4237c44dbf6e6196354ca37056d159aaef3e43459b10969b"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.47/scratchmd_linux_amd64.tar.gz"
      sha256 "aa0c5a65f3ae77001cdb6d53e25c7eed1eb1bc703b483acb2607d5c9d34d188b"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
