class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.116"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.116/scratchmd_darwin_arm64.tar.gz"
      sha256 "eb198ad4f0734698a35c9bad63691dad4df748ed5490bf37d77c9738dec16282"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.116/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.116/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.116/scratchmd_linux_amd64.tar.gz"
      sha256 "4a3c6ebe7acfdc79003392519dbdc52d4174d28a5fd9bc3204a445be04210512"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
