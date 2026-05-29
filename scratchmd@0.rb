class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.100"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.100/scratchmd_darwin_arm64.tar.gz"
      sha256 "612b272f796a2826418659d80f8b5d6c7556aca1d379b04c95f64dad3bfeab6c"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.100/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.100/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.100/scratchmd_linux_amd64.tar.gz"
      sha256 "6f5f0d68eb3d81f62046296bdc185a6d2dccfa1e03f064c3f08582bc279fbd7c"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
