class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.197"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.197/scratchmd_darwin_arm64.tar.gz"
      sha256 "6b8a97b1634e226dd5ac9e997d1f6804f812af8ee812a0c65e1a98eea94dba79"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.197/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.197/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.197/scratchmd_linux_amd64.tar.gz"
      sha256 "290f19bf9bd11bce3a85208c846023e3214404f64809067ceccc8d7511fc9cd1"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
