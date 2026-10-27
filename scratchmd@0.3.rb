class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.224"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.224/scratchmd_darwin_arm64.tar.gz"
      sha256 "70c331f58c88b41595c4848499c951d1ae983599155c01847e79e1f4811d998e"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.224/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.224/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.224/scratchmd_linux_amd64.tar.gz"
      sha256 "820c928cdf8a08ccddb783a0b578685c5249ca1dd508293863c93caaaf6c9a91"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
