class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.200"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.200/scratchmd_darwin_arm64.tar.gz"
      sha256 "af6de1f9056c0a9a1d14e96b0494004d0f9af114e979c4141de7764499524cda"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.200/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.200/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.200/scratchmd_linux_amd64.tar.gz"
      sha256 "a2ac816612f6a6dab3c272271e5efc24b13c80539cdad7e4de8102fffd4cd8e7"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
