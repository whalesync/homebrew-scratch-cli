class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.110"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.110/scratchmd_darwin_arm64.tar.gz"
      sha256 "d28af376dc3b8e7210c4c0e459b0992bf317b8bfccf20f0427eaceb162234880"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.110/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.110/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.110/scratchmd_linux_amd64.tar.gz"
      sha256 "7864472010fbd60535b7e1c6d46254a62c4af6dbb3665b6325b5dfdc43bb12d2"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
