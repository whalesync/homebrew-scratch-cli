class ScratchmdAT03132 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.132"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.132/scratchmd_darwin_arm64.tar.gz"
      sha256 "f46a6331d6f2fd6d7df041826ef0f78855995d5179d61732a565db18ac5ab674"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.132/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.132/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.132/scratchmd_linux_amd64.tar.gz"
      sha256 "11aa21e6156f6699b17f995e9b947b55319a48edca20aa2322021aada0625a76"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
