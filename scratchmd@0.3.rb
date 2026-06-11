class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.114"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.114/scratchmd_darwin_arm64.tar.gz"
      sha256 "89b9bb28000b49d8a1788f132248ba4860e1f9794c608529dce5db0d0f51c717"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.114/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.114/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.114/scratchmd_linux_amd64.tar.gz"
      sha256 "4e3e0f55b8b99810ddbf214172754d7c750bb7896da594f60519c0e4ac6a1897"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
