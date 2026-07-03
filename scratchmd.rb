class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.138"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.138/scratchmd_darwin_arm64.tar.gz"
      sha256 "03829032c8ad6f527a0db1dbf4846ff63297b622f2cd99f53f6ddf38ff79bf5f"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.138/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.138/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.138/scratchmd_linux_amd64.tar.gz"
      sha256 "4ab97188cb2b78169edbc1c7f4a887506c472c763e1d71428fa40921423efb55"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
