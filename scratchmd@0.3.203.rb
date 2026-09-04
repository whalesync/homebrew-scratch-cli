class ScratchmdAT03203 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.203"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.203/scratchmd_darwin_arm64.tar.gz"
      sha256 "7183af8b28b0cf2ae66968fee2ef1f1f975a30737ada9b382d9ffc8c62525c48"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.203/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.203/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.203/scratchmd_linux_amd64.tar.gz"
      sha256 "86c07467149b3defb3cb696310d3368d67bdbfcd55121be71dc121e156d842f3"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
