class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.161"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.161/scratchmd_darwin_arm64.tar.gz"
      sha256 "52601bcc87cfc54dbe4426cf69938931631f8d3671f5026ba48645c3db2d4109"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.161/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.161/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.161/scratchmd_linux_amd64.tar.gz"
      sha256 "2873508050dda130b394b41ea0e2ffa554e14635fd7d39ce469be2177e6480da"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
