class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.205"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.205/scratchmd_darwin_arm64.tar.gz"
      sha256 "a79accb422c4deda071f527bd78522d881284ce4b0b46d47fa58ed5ceb55fe64"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.205/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.205/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.205/scratchmd_linux_amd64.tar.gz"
      sha256 "f0202a49cb4ef6b7255bb9d6ee0ab349d6b6aac3006c6538780d3bcccd0438b7"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
