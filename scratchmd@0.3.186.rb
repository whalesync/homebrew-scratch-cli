class ScratchmdAT03186 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.186"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.186/scratchmd_darwin_arm64.tar.gz"
      sha256 "e506557ea4232913de2b20fc8cada42daeabf7c549d19b722b51979fdf234c4d"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.186/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.186/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.186/scratchmd_linux_amd64.tar.gz"
      sha256 "e599bc24a1070325cddd7844cef1741298d64512fca52b13aa2b412d0fb162ff"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
