class ScratchmdAT03163 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.163"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.163/scratchmd_darwin_arm64.tar.gz"
      sha256 "30692085503e91909cbc2c2619e6264a89c2e11b884a6c7ecffc5f992bb3abb0"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.163/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.163/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.163/scratchmd_linux_amd64.tar.gz"
      sha256 "9278e46da46b06385a8517b81db37f656e8284ec096143f65707944c85fbcc2c"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
