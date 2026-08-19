class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.191"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.191/scratchmd_darwin_arm64.tar.gz"
      sha256 "2f6e6c5bba435c59f494758dde32ab3761c933ab6d0022d42cdd4f0609a717ac"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.191/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.191/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.191/scratchmd_linux_amd64.tar.gz"
      sha256 "68b8db7bae49ff2233a8c7a081cd3a3347e0317b8c58b64794988d1bce0487c7"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
