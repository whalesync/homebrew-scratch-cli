class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.122"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.122/scratchmd_darwin_arm64.tar.gz"
      sha256 "b273cf1c55631fd4801cdab466508dec7037555317a7a934da9f0ac0f57ea516"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.122/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.122/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.122/scratchmd_linux_amd64.tar.gz"
      sha256 "3aff63250700777221a369096b8bdf60a5466445654cd9113ba4979458309d13"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
