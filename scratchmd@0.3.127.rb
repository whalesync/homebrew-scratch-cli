class ScratchmdAT03127 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.127"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.127/scratchmd_darwin_arm64.tar.gz"
      sha256 "d443dbd03e92c05d4d462849d91828941f76553cd3bce21013f70269bf65132b"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.127/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.127/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.127/scratchmd_linux_amd64.tar.gz"
      sha256 "323e7f729b597df25e122dc9815415c52e54a5b6019f5d2d276813361fdbdcc1"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
