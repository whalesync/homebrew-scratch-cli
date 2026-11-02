class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.233"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.233/scratchmd_darwin_arm64.tar.gz"
      sha256 "dddd84c4d86033a401ea7ee04e2ce373aad5d678e3435343fac379879c3c0b0d"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.233/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.233/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.233/scratchmd_linux_amd64.tar.gz"
      sha256 "d67b9303a0a0475282cef5150548e3c1dd5cb51f74531d6ad8e2f82e678c4c0e"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
