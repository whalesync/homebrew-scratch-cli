class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.216"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.216/scratchmd_darwin_arm64.tar.gz"
      sha256 "66983370a509a71ca93b10effe1ed87e77eed04b1b30d90a100056f6285c57a0"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.216/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.216/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.216/scratchmd_linux_amd64.tar.gz"
      sha256 "d8c8ff095d140973536f43e967ffc779dae524c845049799561613b976774cf7"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
