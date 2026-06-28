class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.134"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.134/scratchmd_darwin_arm64.tar.gz"
      sha256 "c80d237bf84c94a4540ffd17dfffd01cc86ddf61a5460cc9f6aad128bd049b9f"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.134/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.134/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.134/scratchmd_linux_amd64.tar.gz"
      sha256 "5234f10b860e0663519b0070b241cbe08c52e2d7a93992dc7e192dbe3d248f36"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
