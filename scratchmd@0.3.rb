class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.214"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.214/scratchmd_darwin_arm64.tar.gz"
      sha256 "ee082c031193ce4ce8ccdb9e0fe56925453c03c2bd13459fce9afba83548ff5d"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.214/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.214/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.214/scratchmd_linux_amd64.tar.gz"
      sha256 "4e5a0645d401240fa9eeb912f921ace4795fd9c8a1416c9f458b119d22e09258"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
