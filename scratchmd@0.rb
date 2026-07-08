class ScratchmdAT0 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.142"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.142/scratchmd_darwin_arm64.tar.gz"
      sha256 "9b359160e7e3ddb305a073034dc8a77afc351ce9187fb189765da425e4f99d59"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.142/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.142/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.142/scratchmd_linux_amd64.tar.gz"
      sha256 "37ed26b8453d57bf0cae12454bcd3d39f4e186f4300a64ab55ea62c5a8d2ba47"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
