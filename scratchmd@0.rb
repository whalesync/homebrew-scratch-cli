class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.219"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.219/scratchmd_darwin_arm64.tar.gz"
      sha256 "c1388657747591862308a47a522a37f656e83f8cbf750aacf2192d77ec0d5195"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.219/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.219/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.219/scratchmd_linux_amd64.tar.gz"
      sha256 "db39aa696be8a93fb342c56feadb97fb28fcccb9e51ef4a20a222b4c137c61e2"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
