class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.46"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.46/scratchmd_darwin_arm64.tar.gz"
      sha256 "c418cb74be4bf864af6237754e741802eb05243a28d892b048b34c099e981eab"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.46/scratchmd_darwin_amd64.tar.gz"
      sha256 "d224b8689a9deb0147d843ff720eff668085fd2d8b5fbeb7b0b92a8ee86058f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.46/scratchmd_linux_arm64.tar.gz"
      sha256 "81872f2e837eee8116eb30a006b161aca69a973f7ee78fdb3620ffb56cf9a9c9"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.46/scratchmd_linux_amd64.tar.gz"
      sha256 "8944b69bd1aaa8ec7064c84e71eee26d63b862906b3d88b529dda53ab44aed48"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
