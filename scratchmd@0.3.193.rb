class ScratchmdAT03193 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.193"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.193/scratchmd_darwin_arm64.tar.gz"
      sha256 "cba401cacfbe0e22060201ba0ba440979ec347a0bc5d4184345980e1b4381b71"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.193/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.193/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.193/scratchmd_linux_amd64.tar.gz"
      sha256 "1dad4441d1cfcceca972aad7fe66b523fd3a8da9d6b9626145047f8fc67f3986"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
