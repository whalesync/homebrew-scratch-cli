class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.153"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.153/scratchmd_darwin_arm64.tar.gz"
      sha256 "50b01de2333f4b9f66634b3bfc2ec7d723f90d3cd43f0faaef1bc0e5e548598e"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.153/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.153/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.153/scratchmd_linux_amd64.tar.gz"
      sha256 "f6d679f2c65dc96982344273c2b3aaedd93f592db06917cfa5b29ffe053943f9"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
