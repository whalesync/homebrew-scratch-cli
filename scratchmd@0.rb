class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.196"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.196/scratchmd_darwin_arm64.tar.gz"
      sha256 "e54202f0fa3b2c5d9917b9265b1c69375baac2df1aa64ccaca33688930f9410f"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.196/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.196/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.196/scratchmd_linux_amd64.tar.gz"
      sha256 "7f3f595471e6f38c062b79aad18254da8b62f2e1753a13aefb4c5512e618b256"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
