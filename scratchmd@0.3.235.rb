class ScratchmdAT03235 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.235"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.235/scratchmd_darwin_arm64.tar.gz"
      sha256 "5c36ab63e280d74cdf00bc216bda97cbbd18eb1a9e2eb061ae3922d02dbdd05c"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.235/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.235/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.235/scratchmd_linux_amd64.tar.gz"
      sha256 "657762a5e5815711241afdda76838302189499c633f22becb425e7970ebe8efb"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
