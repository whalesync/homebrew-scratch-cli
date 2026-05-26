class ScratchmdAT0398 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.98"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.98/scratchmd_darwin_arm64.tar.gz"
      sha256 "6daae94006e10bb29da9bb44b97af8406df026920925c10784504ba32019c695"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.98/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.98/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.98/scratchmd_linux_amd64.tar.gz"
      sha256 "18b7cf0ee2d4e7d75a1a098ceca6cc430ee7161c1f987bf8bc3e928d76417c9c"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
