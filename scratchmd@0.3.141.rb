class ScratchmdAT03141 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.141"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.141/scratchmd_darwin_arm64.tar.gz"
      sha256 "8f1364bdaabdc61865de78ffd4f1ecb935fd5a6c8b458aff842d2daf8b93d34a"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.141/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.141/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.141/scratchmd_linux_amd64.tar.gz"
      sha256 "367504478374087e6f07dc054cd837a7500dff6620aff5006b9298ed1a9c4f15"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
