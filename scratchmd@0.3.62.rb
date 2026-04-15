class ScratchmdAT0362 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.62"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.62/scratchmd_darwin_arm64.tar.gz"
      sha256 "8e1edaebdd785164b0b57e9f0917f9842001dae54a334b6fc1c2481e04b33260"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.62/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.62/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.62/scratchmd_linux_amd64.tar.gz"
      sha256 "2d54ce187cc6a5d98ba83c2ac02d1ab21b7584a3756ebe0c3634853344bb7d0d"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
