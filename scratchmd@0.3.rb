class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.50"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.50/scratchmd_darwin_arm64.tar.gz"
      sha256 "2e96ec35bcc45dd21337e01d87519dcd3fbdc10cdd5fdfcefe791ebde05f2c7f"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.50/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.50/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.50/scratchmd_linux_amd64.tar.gz"
      sha256 "dfbbdcbf0d5f91e491fa1b5bbcc9e50b64b52b15592b130f9307665dff822eff"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
