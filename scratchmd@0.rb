class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.77"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.77/scratchmd_darwin_arm64.tar.gz"
      sha256 "94ed556a71e59470a315f08faac4460fa5df247b9e0a6152e76fc981c6aa4110"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.77/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.77/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.77/scratchmd_linux_amd64.tar.gz"
      sha256 "dab7606e7449b68a6822ec193f689eaed2cff85e49e84db71b9080476ac1b194"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
