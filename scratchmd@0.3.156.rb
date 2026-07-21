class ScratchmdAT03156 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.156"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.156/scratchmd_darwin_arm64.tar.gz"
      sha256 "9182ba54016006bcc1c22775540102119191dae7a68231ceb871829111d3023b"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.156/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.156/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.156/scratchmd_linux_amd64.tar.gz"
      sha256 "3c22bd9c817da133e85c151484efa112b660d17c7a3e8df1b9765e08a3f17770"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
