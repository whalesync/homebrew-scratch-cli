class ScratchmdAT03181 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.181"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.181/scratchmd_darwin_arm64.tar.gz"
      sha256 "1e3e9905523be6027aa56041194cc0ff68b117b259f91e703524bda60eb96dd6"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.181/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.181/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.181/scratchmd_linux_amd64.tar.gz"
      sha256 "32a4d7f80edf3c93646cf75b100b2e713869d12d9162ce14540e4db3e1df5cc8"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
