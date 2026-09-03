class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.202"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.202/scratchmd_darwin_arm64.tar.gz"
      sha256 "593bd0506ff46d24a7af1183590c479d23b8ca9f448430273134111fecc4fc11"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.202/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.202/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.202/scratchmd_linux_amd64.tar.gz"
      sha256 "afb588ed756ec2356955c88ccd2b54e3bc7bf702e34cb77326228ecd65832e2f"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
