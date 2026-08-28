class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.199"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.199/scratchmd_darwin_arm64.tar.gz"
      sha256 "da22f3877799a44bff786b9375b539410a5a4bc422d96debc4d4f6dcce458838"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.199/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.199/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.199/scratchmd_linux_amd64.tar.gz"
      sha256 "d6fadd8356c0d0d943f8cd73dab00acd6ab78534cfe5c2f61df8e1580c60e172"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
