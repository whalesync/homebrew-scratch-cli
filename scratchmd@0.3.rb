class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.54"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.54/scratchmd_darwin_arm64.tar.gz"
      sha256 "14d6a3d473f54f9e030a5282496b07bfa0ffd66de2d2750ac058630065e2b4de"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.54/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.54/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.54/scratchmd_linux_amd64.tar.gz"
      sha256 "4c307eb4d26a9061155e9be3f1cebe36825c262f22a95a612748f8c16827e753"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
