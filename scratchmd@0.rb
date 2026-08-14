class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.187"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.187/scratchmd_darwin_arm64.tar.gz"
      sha256 "518488f9718f827c7a7f44649aab224a464d18892dc1ac15cce1abaa1935aa0c"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.187/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.187/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.187/scratchmd_linux_amd64.tar.gz"
      sha256 "6ca8d6e751e34c902892c735aa94608e6f6b9721bbd1beb16bbf01108a24628e"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
