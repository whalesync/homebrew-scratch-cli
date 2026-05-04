class ScratchmdAT0374 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.74"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.74/scratchmd_darwin_arm64.tar.gz"
      sha256 "c71ab46a8991967630b21a38f67f80a8e0ecbb8289890507c1af9be45980ed80"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.74/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.74/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.74/scratchmd_linux_amd64.tar.gz"
      sha256 "cf95497a4be6e610d636469e7816f580174b4e75d195bcd6a793e351baa57e39"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
