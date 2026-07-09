class ScratchmdAT03145 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.145"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.145/scratchmd_darwin_arm64.tar.gz"
      sha256 "57cf211fe3e718e9b9aff74fcc9d9c4c8d7855793958f8e1af7913b9f98fb5a7"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.145/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.145/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.145/scratchmd_linux_amd64.tar.gz"
      sha256 "e6df38119570ea108bffeb665f13e63ee9c464056ef833bffeb574646386369e"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
