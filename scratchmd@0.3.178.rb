class ScratchmdAT03178 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.178"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.178/scratchmd_darwin_arm64.tar.gz"
      sha256 "457ca8d51aa454f0a2f3d2cd40e8799a7ef186deb9c0e8fb6bf48616e1a3f6d4"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.178/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.178/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.178/scratchmd_linux_amd64.tar.gz"
      sha256 "b1832ed546e6f10d25f98431ee6f8b80403d3a1dd4d78fecd082d7ac53ebc1c9"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
