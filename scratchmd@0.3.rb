class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.207"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.207/scratchmd_darwin_arm64.tar.gz"
      sha256 "99af34447afb997b757e9354b25c5a41b3704633a6e34b52d49d988f0844f921"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.207/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.207/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.207/scratchmd_linux_amd64.tar.gz"
      sha256 "00d80b11875c4b12c2da66c3a891ae1523d7c71a852eb1cf8a55445816b7d46a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
