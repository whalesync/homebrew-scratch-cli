class ScratchmdAT03180 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.180"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.180/scratchmd_darwin_arm64.tar.gz"
      sha256 "f983da02fed308834eda641702aaa6eceea9263d49ce7b93c4dff4b5f462feaf"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.180/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.180/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.180/scratchmd_linux_amd64.tar.gz"
      sha256 "aa46b4be53946f1b07409e9be68cc4ef396b43df4284ff403b1a65413d6c59f0"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
