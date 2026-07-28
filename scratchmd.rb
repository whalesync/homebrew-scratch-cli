class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.162"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.162/scratchmd_darwin_arm64.tar.gz"
      sha256 "71c3c157f0fc6a4f5a9fe1ecb528e7776dacee2182b65d7256b74b31af0b3360"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.162/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.162/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.162/scratchmd_linux_amd64.tar.gz"
      sha256 "726d86780b301552e770de2cf2ae9b8ebf7dc28496877bf2d41f97cd51c92638"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
