class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.174"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.174/scratchmd_darwin_arm64.tar.gz"
      sha256 "ff675116356b9a7ade3698646f2c13dcd9349eaa678b62eb4a3caf89ac2ba4a7"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.174/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.174/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.174/scratchmd_linux_amd64.tar.gz"
      sha256 "c6354efcc2c07dbc3a7d334b590a5b45045eff8b1a9fd9b48cc7ab54c2d5a550"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
