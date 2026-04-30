class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.72"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.72/scratchmd_darwin_arm64.tar.gz"
      sha256 "32fad0a647d54938a1ed71ece5c95619880c62fee8c57900c20fc4551c59a400"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.72/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.72/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.72/scratchmd_linux_amd64.tar.gz"
      sha256 "005bde42b57847202b67b7b5c18205bbe7bec9d94ca67a5d6f25a11d5e1d84ac"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
