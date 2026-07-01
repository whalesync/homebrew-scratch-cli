class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.136"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.136/scratchmd_darwin_arm64.tar.gz"
      sha256 "f656213cf1a461537f4568534e5893f25f597efa0268793314e78c034d2bafc1"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.136/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.136/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.136/scratchmd_linux_amd64.tar.gz"
      sha256 "b4fce68c5a21a8b45ccf88445c54187cc3939905004dde04d85c6d57d4587e1d"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
