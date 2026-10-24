class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.222"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.222/scratchmd_darwin_arm64.tar.gz"
      sha256 "d6c28eb7fde903c46959104112d61b2d7539a3345cf95d28518f59d96687ae29"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.222/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.222/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.222/scratchmd_linux_amd64.tar.gz"
      sha256 "677f2514375e0792f0a2f874fe96c0aa7b3b1fb7aedd7d1fc0195b9e1849857a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
