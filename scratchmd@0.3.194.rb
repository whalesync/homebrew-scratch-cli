class ScratchmdAT03194 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.194"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.194/scratchmd_darwin_arm64.tar.gz"
      sha256 "a31b67e6fcb450cb403e41aed74ce85273e6f9d7a947ba7a25f11808f76df2dd"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.194/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.194/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.194/scratchmd_linux_amd64.tar.gz"
      sha256 "4f67f44d6489b6ef2d0000e95f16139e5e90be70f5fff2a1725f234c0e1c2193"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
