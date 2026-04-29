class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.69"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.69/scratchmd_darwin_arm64.tar.gz"
      sha256 "3e3bc67cc659b56b823b5eb496e5a825b335bfdfc920af86250bb27df8cc60f1"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.69/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.69/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.69/scratchmd_linux_amd64.tar.gz"
      sha256 "d3589f62118cc6dc12b9dd50d29aaccbe3fe5eec090e17ca79131a9284c04857"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
