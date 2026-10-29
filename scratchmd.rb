class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.226"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.226/scratchmd_darwin_arm64.tar.gz"
      sha256 "34fd166b6612eac3bca4b795c5f1da115e919fafcb0bd74db941b49c0a66994d"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.226/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.226/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.226/scratchmd_linux_amd64.tar.gz"
      sha256 "0e253bdedc57db76f85d8b3881c70af43262873e740d4800858815a6160c474b"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
