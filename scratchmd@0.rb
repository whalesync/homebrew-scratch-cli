class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.76"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.76/scratchmd_darwin_arm64.tar.gz"
      sha256 "7965bc6e1269e5825bf3be8f457bffc9f10b9240b6c512333b0bbd021e1cd4bb"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.76/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.76/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.76/scratchmd_linux_amd64.tar.gz"
      sha256 "5cb3fcef5760f31274e0d9ee26e1e0aebdb1d70ec8f5f846aaf3188f730d1a28"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
