class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.232"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.232/scratchmd_darwin_arm64.tar.gz"
      sha256 "df072145c9cf03b3672e9022b4f581963aa66b94756f4bae1ccf798598be4135"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.232/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.232/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.232/scratchmd_linux_amd64.tar.gz"
      sha256 "aa9a0596df91db030d1531144592e717d15bb3fc2df08e13e34abd8763c2cf1d"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
