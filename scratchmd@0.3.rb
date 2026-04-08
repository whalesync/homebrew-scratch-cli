class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.55"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.55/scratchmd_darwin_arm64.tar.gz"
      sha256 "19d6e1e46d09a0733dcaf657d42c727c0b3d15889a79e96bacd46ee70a43fb26"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.55/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.55/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.55/scratchmd_linux_amd64.tar.gz"
      sha256 "f51bbb776a642f255f2dd210788f9224506db82e15207c71a0362fb400c1831f"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
