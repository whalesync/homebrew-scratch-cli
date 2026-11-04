class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.236"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.236/scratchmd_darwin_arm64.tar.gz"
      sha256 "531a9853f50dff1bea28279ea956bb6225b68ad5f76b3ffd2338739e916691b0"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.236/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.236/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.236/scratchmd_linux_amd64.tar.gz"
      sha256 "9817c6a0a672e234248158754d8a701ccededb9fd98da83da5fb89ac94053b58"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
