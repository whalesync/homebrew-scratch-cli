class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.58"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.58/scratchmd_darwin_arm64.tar.gz"
      sha256 "0d5a2989ac43004462c113d1f1f0cbbb098ba1367527671a476dd13709a24dc2"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.58/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.58/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.58/scratchmd_linux_amd64.tar.gz"
      sha256 "05374aedece44212b15e047180faef6b2e13f7f05e092bc1a3b43eae56140e47"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
