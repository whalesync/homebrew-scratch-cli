class ScratchmdAT03133 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.133"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.133/scratchmd_darwin_arm64.tar.gz"
      sha256 "4d31225fa0e75dc437f9916554718cd04d2be6d17ccfd608003cacdc98e00850"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.133/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.133/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.133/scratchmd_linux_amd64.tar.gz"
      sha256 "b177d32c44451261aed4199633609524fdc8a6fcfe648dead8869cc37061b12c"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
