class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.188"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.188/scratchmd_darwin_arm64.tar.gz"
      sha256 "09cefc2bba72fe8ed59ca577ec913da66a175865499193bc09d408273cb10a3d"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.188/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.188/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.188/scratchmd_linux_amd64.tar.gz"
      sha256 "799307f670e4ab197ba52123f81674dbdf6b17c4528b11a0baeb4c12c7d93531"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
