class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.208"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.208/scratchmd_darwin_arm64.tar.gz"
      sha256 "90af6b13a76f7953f0453dc3869d303298bcdcb203621ccecee936fcf81f45a4"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.208/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.208/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.208/scratchmd_linux_amd64.tar.gz"
      sha256 "506ce36ff1dea165bd356279bd05aa02eaa3212da0167645bff666520f10fe47"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
