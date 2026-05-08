class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.80"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.80/scratchmd_darwin_arm64.tar.gz"
      sha256 "0e81707ede9179cf88fbbd23abc9db53658853526cd94f8e28a0a26dab0cc9f8"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.80/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.80/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.80/scratchmd_linux_amd64.tar.gz"
      sha256 "0c643b1c4b964b642d286392790e6b45b0ea6d60a0323e13138986d9a2a87dd9"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
