class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.51"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.51/scratchmd_darwin_arm64.tar.gz"
      sha256 "79ad5df4c3c4c8fd0a36034ee4e1af5648daa7b7d7acc6333e5cef9164471f74"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.51/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.51/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.51/scratchmd_linux_amd64.tar.gz"
      sha256 "6ae64c97927278ec1072c8dd0f431e166f354800d9bca790397df20990f915e0"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
