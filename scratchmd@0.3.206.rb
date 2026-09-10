class ScratchmdAT03206 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.206"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.206/scratchmd_darwin_arm64.tar.gz"
      sha256 "4b52b0786e5f54ad4b0c7909935c0758c87f13d4932bb8677d334124042ae8c9"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.206/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.206/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.206/scratchmd_linux_amd64.tar.gz"
      sha256 "76732585844ac34b71883f09b463ebac6050674339e9e336cdee0f234b30e6d4"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
