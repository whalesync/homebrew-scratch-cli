class ScratchmdAT03103 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.103"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.103/scratchmd_darwin_arm64.tar.gz"
      sha256 "1cba4217a03e00e315c8b334273106bd7ab25ad5ffc6571d8591735888cb69b4"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.103/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.103/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.103/scratchmd_linux_amd64.tar.gz"
      sha256 "eca6c3a3acbbde75004dd8179038e25a175c07b0b3902d529b5276ddc5e980fc"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
