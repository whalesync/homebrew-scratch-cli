class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.106"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.106/scratchmd_darwin_arm64.tar.gz"
      sha256 "c992235ced72064f83d8078176f92454574c72f1454f7755b9bd940e25f3b7ed"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.106/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.106/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.106/scratchmd_linux_amd64.tar.gz"
      sha256 "4970ede4787ae9a02b55effd0ef4aff3e1b8d279a33dbc2fa45d8dcf8e787687"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
