class ScratchmdAT0368 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.68"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.68/scratchmd_darwin_arm64.tar.gz"
      sha256 "f817909713a841a9ed1f92e028173a1ec9593a0ce8c2f2b1d13ba744f72c5c28"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.68/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.68/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.68/scratchmd_linux_amd64.tar.gz"
      sha256 "83c4f76f124b055664f0c4c7eb630d131b67951db9f3ca35a5fc9e0e27004e36"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
