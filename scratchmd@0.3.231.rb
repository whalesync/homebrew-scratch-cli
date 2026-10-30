class ScratchmdAT03231 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.231"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.231/scratchmd_darwin_arm64.tar.gz"
      sha256 "d604b4865730a5c4ae21505ae5dd0cd853ac4f637e3103ea160b1821069ffa2b"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.231/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.231/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.231/scratchmd_linux_amd64.tar.gz"
      sha256 "05fd1b2bbc2bfa140606be13827fcaea46473b3a21b72c84580d378dbe71fd11"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
