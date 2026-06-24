class ScratchmdAT03129 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.129"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.129/scratchmd_darwin_arm64.tar.gz"
      sha256 "fa4f59eb8655cbc1fb901f8ccf3f2b346f3978ee2ce73f436321e534f4514f8c"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.129/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.129/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.129/scratchmd_linux_amd64.tar.gz"
      sha256 "656a985a00b4235edefa47a17e29b6d7b204a71760dada3024367295c588bd5b"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
