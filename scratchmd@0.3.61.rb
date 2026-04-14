class ScratchmdAT0361 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.61"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.61/scratchmd_darwin_arm64.tar.gz"
      sha256 "4264485f9bd5bbce72cbc2ddcd2378586b2b71f49f6eaade671649653981d264"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.61/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.61/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.61/scratchmd_linux_amd64.tar.gz"
      sha256 "fc77068e58f7a4c1b428e229459aaff680ea2d3a15a7494d3ce27f91a589634d"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
