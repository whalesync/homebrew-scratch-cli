class ScratchmdAT03143 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.143"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.143/scratchmd_darwin_arm64.tar.gz"
      sha256 "11b28e3420fdf167e727f3460f144192f94f6f42f08e6c0e217030a3186ac06c"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.143/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.143/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.143/scratchmd_linux_amd64.tar.gz"
      sha256 "12b09d528e02e1c3cfb7eb441572801d851adad8e56cff945e9d65b23b70e188"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
