class ScratchmdAT0387 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.87"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.87/scratchmd_darwin_arm64.tar.gz"
      sha256 "224abb4b1929d4454ff5dd8933b0854554f5cab29486d4c3400b1b4ccd922b13"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.87/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.87/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.87/scratchmd_linux_amd64.tar.gz"
      sha256 "5187fba29e7ac15d14284ce9eb55db8d943c79b8cc23f1b0e6d9cdfe8f8ad08d"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
