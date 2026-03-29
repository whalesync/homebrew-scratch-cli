class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.48"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.48/scratchmd_darwin_arm64.tar.gz"
      sha256 "e6987a4c36f712bb63944f35dd5ebf0f28fc4c57cbb614b5c64bab4dd15de5da"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.48/scratchmd_darwin_amd64.tar.gz"
      sha256 "29e999ae73042a2b4f24e19df41adbbdb0e84bb6fe33b3bcd3ca11f5b7af1c9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.48/scratchmd_linux_arm64.tar.gz"
      sha256 "3a571fb7f9f90f0445530c4bf4bcc9e70b52a40a618772833e880a4e4e83be91"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.48/scratchmd_linux_amd64.tar.gz"
      sha256 "40a6b5989aa646a1d1fc8397e6dbf5f398b18900ac7324f9447be9a1a164c04e"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
