class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.159"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.159/scratchmd_darwin_arm64.tar.gz"
      sha256 "10aca0463121810601a5950779d68bf766734dda420d55e7691ed65a898ef581"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.159/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.159/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.159/scratchmd_linux_amd64.tar.gz"
      sha256 "db1d61353d3127e22791035f79561b8452913d746c83f36c05b7a503e6318ee2"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
