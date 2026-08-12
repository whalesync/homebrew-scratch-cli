class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.185"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.185/scratchmd_darwin_arm64.tar.gz"
      sha256 "55b2ecf4130a68686a00418e32f4a50910cb1a93a02afed0ce3d46cae6b5a211"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.185/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.185/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.185/scratchmd_linux_amd64.tar.gz"
      sha256 "f1e23e93d69a7c676ab3c165e99de232269e0597c720300bb760743fb7a78eb0"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
