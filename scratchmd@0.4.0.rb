class ScratchmdAT040 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.4.0/scratchmd_darwin_arm64.tar.gz"
      sha256 "93208bf36f86902de0cda5f8ccce69c3baad47dbaf77b1e27ccbeb2f90b79da2"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.4.0/scratchmd_darwin_amd64.tar.gz"
      sha256 "e96dae6bd7e0a42ea98ffbbd63f46113098e3b86a812a80a938fa597551aa9ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.4.0/scratchmd_linux_arm64.tar.gz"
      sha256 "2ccda2b80424732548996faf1cf910bf795f231a7ba30126cb6d499f0bfbc40b"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.4.0/scratchmd_linux_amd64.tar.gz"
      sha256 "6bdafde09da6b6bcf0df66972e20dc3fb2a2bb1ab2a903c62f79dade850b0c56"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
