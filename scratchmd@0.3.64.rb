class ScratchmdAT0364 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.64"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.64/scratchmd_darwin_arm64.tar.gz"
      sha256 "6397723837b2e9483d9e1b8c10b2a0363aad529693afa4e76f036c827accf826"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.64/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.64/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.64/scratchmd_linux_amd64.tar.gz"
      sha256 "4a3371ea3addb024171842f52cc001270fb46326d7811926f23934af4a843957"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
