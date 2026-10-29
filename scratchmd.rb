class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.227"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.227/scratchmd_darwin_arm64.tar.gz"
      sha256 "ca008fc35e5f9ab3483d4cee2c9b981a5b7b4190c4e4e799d26538220293448b"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.227/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.227/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.227/scratchmd_linux_amd64.tar.gz"
      sha256 "a3e8313881cba8096c678f648a1386a1b93c045f3084afc27e5effe543c11349"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
