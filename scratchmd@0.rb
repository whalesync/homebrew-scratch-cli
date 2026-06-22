class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.125"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.125/scratchmd_darwin_arm64.tar.gz"
      sha256 "20b99d5adcc31924090acd2d8fe934cc5073ac14ce51d7495aae59d688b912a5"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.125/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.125/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.125/scratchmd_linux_amd64.tar.gz"
      sha256 "9d4953c3ac7892d4c09ed343777a323d5960dccc0d878c0a05459f57072b70ec"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
