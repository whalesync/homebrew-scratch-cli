class ScratchmdAT03115 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.115"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.115/scratchmd_darwin_arm64.tar.gz"
      sha256 "13379ed2b98139a85cb99e7023dc756f304e952a88c232a734454161ce3e78bd"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.115/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.115/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.115/scratchmd_linux_amd64.tar.gz"
      sha256 "7212b349b315bf0d1b4f81ae16012a917355282a1c5ef252eccb28122dfc9f9f"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
