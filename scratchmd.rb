class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.151"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.151/scratchmd_darwin_arm64.tar.gz"
      sha256 "af0dc7968ceaa4238a1478405e17cccf5826f381b2b8b27e64ae23ffab228f23"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.151/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.151/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.151/scratchmd_linux_amd64.tar.gz"
      sha256 "2d16ca52e6d97178bd1083291e258b7eaf31a3e89a91a4d64850b352105b7010"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
