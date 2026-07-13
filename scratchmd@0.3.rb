class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.147"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.147/scratchmd_darwin_arm64.tar.gz"
      sha256 "0c07d67eda5469055661074d0ecb9951195145d3342df36f96d2c9f08c93efd7"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.147/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.147/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.147/scratchmd_linux_amd64.tar.gz"
      sha256 "84cd502f9a6eb1d575d1acb9f1eaedfefaeb42bb08b81db5be93cc8ad022c5f9"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
