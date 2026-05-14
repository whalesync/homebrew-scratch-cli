class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.88"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.88/scratchmd_darwin_arm64.tar.gz"
      sha256 "4c1532b3d3c44188027b90629da1e55bbabea036fe67e22b9d26a02439bf666c"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.88/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.88/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.88/scratchmd_linux_amd64.tar.gz"
      sha256 "27a6f8ecb038ca3bd5d74362d64f02a41c7c18f5ca95c3f0746bc36e7eb67f67"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
