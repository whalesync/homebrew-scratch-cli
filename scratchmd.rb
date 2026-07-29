class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.165"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.165/scratchmd_darwin_arm64.tar.gz"
      sha256 "60b6f364c1e339958bca154ab2d134e28e1ca8f8c40b3dd4041bcf730d95f2a7"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.165/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.165/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.165/scratchmd_linux_amd64.tar.gz"
      sha256 "bd02dae16521f56900bad12441374e86631b3158e136d9782ad2a3642b856a8a"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
