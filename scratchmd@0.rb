class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.225"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.225/scratchmd_darwin_arm64.tar.gz"
      sha256 "b8d38247881cb391f94c0caf7404fd44fa54b6d32706e498aa9fe0977cd6663d"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.225/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.225/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.225/scratchmd_linux_amd64.tar.gz"
      sha256 "97b940390f42d5e4851d6a71763e16775a8a4d771d25006d25bf0773c84ee0b1"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
