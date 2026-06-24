class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.130"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.130/scratchmd_darwin_arm64.tar.gz"
      sha256 "e4fe571f5b2f84f9660e6487f054b5c11d23133bd0817bf0a3631a765ebfeae8"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.130/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.130/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.130/scratchmd_linux_amd64.tar.gz"
      sha256 "499d1850ee07f5e729399423a5494164afda4478eefd2402ca219d0c63f8aad2"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
