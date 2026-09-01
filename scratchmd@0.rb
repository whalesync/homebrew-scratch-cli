class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.201"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.201/scratchmd_darwin_arm64.tar.gz"
      sha256 "c74f450a73ccb36952aedf616b223225c97d1f39d3e6792e74f70292861faf32"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.201/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.201/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.201/scratchmd_linux_amd64.tar.gz"
      sha256 "e669c41e3089b9b44dfcae6903e454a2b7cc10871bdef06fe2ebe6d06a3ebbef"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
