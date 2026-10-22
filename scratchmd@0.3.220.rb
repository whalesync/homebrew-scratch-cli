class ScratchmdAT03220 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.220"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.220/scratchmd_darwin_arm64.tar.gz"
      sha256 "904fa34841892d2bf252339e3a86052402e57b66996fedd0b2d1718f5643310d"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.220/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.220/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.220/scratchmd_linux_amd64.tar.gz"
      sha256 "b9a62e35580b5e0f4335b5018720e66abbb20c4966f17cfda6fd9ab6883bc374"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
