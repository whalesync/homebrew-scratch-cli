class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.195"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.195/scratchmd_darwin_arm64.tar.gz"
      sha256 "91f72f541db9887ee28140e4b4c75a14e904c7472a2f6024281919836882651b"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.195/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.195/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.195/scratchmd_linux_amd64.tar.gz"
      sha256 "c490dedecc6da7db4417591d74d679d89c7188aeb4f491e8fcfdb4e152fb2193"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
