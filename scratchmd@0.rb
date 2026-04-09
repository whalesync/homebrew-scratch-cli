class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.59"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.59/scratchmd_darwin_arm64.tar.gz"
      sha256 "d61330c816c76ce73a55de717069274a4998116f7b7350e798440ee805611330"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.59/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.59/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.59/scratchmd_linux_amd64.tar.gz"
      sha256 "de32378576c1ae791e4e85d700486f431098bf678d837a6613d47896a5384a35"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
