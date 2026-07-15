class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.149"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.149/scratchmd_darwin_arm64.tar.gz"
      sha256 "779479a9114489135e7eb8c7a3f70454d1b22917239167625721fae6989fce2e"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.149/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.149/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.149/scratchmd_linux_amd64.tar.gz"
      sha256 "b9832dc95efba1b4f6ae65315924a317762efa4b659f73892d86c5a8948976a8"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
