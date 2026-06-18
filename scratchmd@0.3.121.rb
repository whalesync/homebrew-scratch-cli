class ScratchmdAT03121 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.121"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.121/scratchmd_darwin_arm64.tar.gz"
      sha256 "356a76c85f0798b013af2c25fd160dce157327cb49d27fde8e48f30b7ad6274f"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.121/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.121/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.121/scratchmd_linux_amd64.tar.gz"
      sha256 "0900f68b5f327fcc4348ff1a4bbadcc64cbab41e606527f1f2648c0e340e661a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
