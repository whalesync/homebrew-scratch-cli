class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.190"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.190/scratchmd_darwin_arm64.tar.gz"
      sha256 "478d6466908ff99efea6aab18e73d45a70e9b8482a5001c8090b7584511adce8"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.190/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.190/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.190/scratchmd_linux_amd64.tar.gz"
      sha256 "3dbc896776fc7928a71a4688d8852099a848f474eb70f797cc9e924c101dff1b"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
