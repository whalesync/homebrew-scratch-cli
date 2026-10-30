class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.229"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.229/scratchmd_darwin_arm64.tar.gz"
      sha256 "1caa0ff7c4ed597ed31f55ca3a126db1ddd56473136d311307ee2cb8452ed162"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.229/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.229/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.229/scratchmd_linux_amd64.tar.gz"
      sha256 "995e0c79fc43026250200a3c060aff1fb552facc81ecef76c0d8689fe9b2db19"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
