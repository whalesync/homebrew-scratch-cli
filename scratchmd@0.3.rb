class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.117"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.117/scratchmd_darwin_arm64.tar.gz"
      sha256 "b0d3b64830c3c741df45b6e5b5498c0cc1dcfa78de30b9785352a8a645f57a62"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.117/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.117/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.117/scratchmd_linux_amd64.tar.gz"
      sha256 "eaccc7ef2ea751e8a7c3f67d60af2d04ba0a1775c4c1f26ed53d89b70fe331a4"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
