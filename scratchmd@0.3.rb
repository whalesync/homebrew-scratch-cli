class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.91"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.91/scratchmd_darwin_arm64.tar.gz"
      sha256 "82a4af4a5b7a05691b2d3a4f1647e7f0852fdbcb6c6c95434876fb8093641067"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.91/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.91/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.91/scratchmd_linux_amd64.tar.gz"
      sha256 "0191883df50222927a334f37d28f4a4e3e534742b0d6ffb895f04d854ca93952"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
