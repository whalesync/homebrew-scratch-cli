class ScratchmdAT03148 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.148"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.148/scratchmd_darwin_arm64.tar.gz"
      sha256 "44184b55d301142efb20c47b755369c22fb2b40d9c5e9d3bc584b6288952a3e5"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.148/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.148/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.148/scratchmd_linux_amd64.tar.gz"
      sha256 "87daf92e592a72f83c75fd60689e2a5bd1e9a3dd7c8cecbf6727e91dc7ea98f7"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
