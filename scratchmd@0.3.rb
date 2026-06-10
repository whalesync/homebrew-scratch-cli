class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.113"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.113/scratchmd_darwin_arm64.tar.gz"
      sha256 "1677f59505c38a06db62d6d3ea11f6d04320ce7050570c51ab5852411b2a80ad"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.113/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.113/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.113/scratchmd_linux_amd64.tar.gz"
      sha256 "491b92e3ed34e2ac2620d7f1b587b42c5c372fb9cdceb321cd4487937df54fba"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
