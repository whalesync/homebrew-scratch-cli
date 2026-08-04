class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.171"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.171/scratchmd_darwin_arm64.tar.gz"
      sha256 "d87411662e23acfd4aacb379d83c4399bcf2a9d57608c1675c3a3c1996f7b07e"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.171/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.171/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.171/scratchmd_linux_amd64.tar.gz"
      sha256 "fa2c4a3375afa7d8d0172dd2a4acc468a1c6c72701ca2399166b8d50597b3726"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
