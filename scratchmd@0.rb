class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.182"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.182/scratchmd_darwin_arm64.tar.gz"
      sha256 "fff346862604e8486cb4a7ff7bf25a8c87a2c27259649b382bd00c6eb1f04167"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.182/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.182/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.182/scratchmd_linux_amd64.tar.gz"
      sha256 "f685dcde461a18e6b472e34d668a69987a4ef688f51b843212b0695c67c2dc44"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
