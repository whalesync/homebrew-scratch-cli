class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.89"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.89/scratchmd_darwin_arm64.tar.gz"
      sha256 "8c37b46c5099e3ad160fc5ee62c2698abde8c9bee2733d6c319baab46811be9c"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.89/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.89/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.89/scratchmd_linux_amd64.tar.gz"
      sha256 "00335119f10b9f13ee1dcd0f6e44a4b36171c1dbbf8a86e373a74ee292936c10"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
