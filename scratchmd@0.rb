class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.123"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.123/scratchmd_darwin_arm64.tar.gz"
      sha256 "e246ee3702c516ed67eb3369f939fa3d6e5cf055a4b7bcc5f6ec71263b516ac5"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.123/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.123/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.123/scratchmd_linux_amd64.tar.gz"
      sha256 "3ac137529cc7e892d1b7734e93697cf917a92037a1aef5b902f6ea29a4b8c32a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
