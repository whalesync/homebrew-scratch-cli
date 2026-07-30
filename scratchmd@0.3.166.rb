class ScratchmdAT03166 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.166"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.166/scratchmd_darwin_arm64.tar.gz"
      sha256 "05933c2135de7914f50a30d481279e6aa57f0198a9ddfe0df3eb72c261020752"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.166/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.166/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.166/scratchmd_linux_amd64.tar.gz"
      sha256 "494b43e1fe9014ba3fc673feb179cd8d9759d497850f282049b843b91d59ff66"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
