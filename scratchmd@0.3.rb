class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.119"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.119/scratchmd_darwin_arm64.tar.gz"
      sha256 "9100aa87be71e9fc493fe3da3afba5f40df7b86bdc53abe01e3eafee774276dd"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.119/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.119/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.119/scratchmd_linux_amd64.tar.gz"
      sha256 "96b8f98b0f115b5fe4c1a7c30b3a61907c15ec0134dd018a890235e1be44b621"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
