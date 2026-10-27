class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.223"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.223/scratchmd_darwin_arm64.tar.gz"
      sha256 "cb122aa056737dbd7a55d684d6461ef6b111245f94e13bbdfe7028181949ba10"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.223/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.223/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.223/scratchmd_linux_amd64.tar.gz"
      sha256 "dd47aba269e5c84255941587eefb65d8fd77c41c2adf413f5ede00f0cec128df"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
