class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.82"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.82/scratchmd_darwin_arm64.tar.gz"
      sha256 "6953481a3603a10fb4295f3663f05f695436b610ca68caeeeeb16b3b6dcb40ef"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.82/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.82/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.82/scratchmd_linux_amd64.tar.gz"
      sha256 "811bb1c986f43dd810bbd90ba6c9032b7553317d53c9e73acc4d3e52e2bd9b0f"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
