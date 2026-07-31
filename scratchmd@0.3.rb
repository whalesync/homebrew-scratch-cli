class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.169"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.169/scratchmd_darwin_arm64.tar.gz"
      sha256 "e210046130b01b68bf2b4f8a3e1238fd1e6b86758b5ba0b467fd4b5ac85918fe"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.169/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.169/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.169/scratchmd_linux_amd64.tar.gz"
      sha256 "ef44021f9a678bd23386ccdb9c1b37c04cb90dc97866537f85aff6b64fb6af40"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
