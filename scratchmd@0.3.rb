class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.92"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.92/scratchmd_darwin_arm64.tar.gz"
      sha256 "a2c2d58d13dc6429a2fa63751ece4b11bb9837c1454d5fa4a8ac4e2f9f91e098"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.92/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.92/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.92/scratchmd_linux_amd64.tar.gz"
      sha256 "9b296f33fb75f721343cd6b2105995e524672fc90cdccc9fd84d778b32be1e6a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
