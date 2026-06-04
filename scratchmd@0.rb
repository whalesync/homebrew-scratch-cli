class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.107"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.107/scratchmd_darwin_arm64.tar.gz"
      sha256 "04bb38baa226e4d26e2156d0801324e3c7c5687f2475a375d216baaa5a2fe440"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.107/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.107/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.107/scratchmd_linux_amd64.tar.gz"
      sha256 "bde472822ed9db233ce96f6562a75190300ac3fe7d0c9d4aec27d6456ce78267"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
