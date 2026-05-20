class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.93"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.93/scratchmd_darwin_arm64.tar.gz"
      sha256 "3067de5132d801c6c29752ba693f5ed3718b720b25d96c02142057a941cacc27"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.93/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.93/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.93/scratchmd_linux_amd64.tar.gz"
      sha256 "d4e0f9727419b8cc307481a2f216079b75305777015b10ce07aa255badff3e4e"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
