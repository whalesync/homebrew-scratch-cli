class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.96"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.96/scratchmd_darwin_arm64.tar.gz"
      sha256 "c5e4d2796b50484f81f888daa140a121d501eae1ca2deb08e1ece08d7b7e3320"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.96/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.96/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.96/scratchmd_linux_amd64.tar.gz"
      sha256 "333ec3519f64ed84fa31d7afedd5c3d5794d6c51a68d544b5861e4e4dbe1fdbf"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
