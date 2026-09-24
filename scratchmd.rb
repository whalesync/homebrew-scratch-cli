class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.210"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.210/scratchmd_darwin_arm64.tar.gz"
      sha256 "23bfa2e58eaad25ff68857dc020e37009d488ef3a6cb47ff2efe795560199107"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.210/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.210/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.210/scratchmd_linux_amd64.tar.gz"
      sha256 "50b443d45a61973d8cfdd4bdde0f21e3a67192119cf980f14670d57f9afbe32e"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
