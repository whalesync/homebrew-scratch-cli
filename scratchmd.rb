class Scratchmd < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.124"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.124/scratchmd_darwin_arm64.tar.gz"
      sha256 "4152ba04c0e22c94b938f641ef85cc9c696aa91a925d826673a8f1e8350e7a23"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.124/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.124/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.124/scratchmd_linux_amd64.tar.gz"
      sha256 "227949e0bff9b3b2339573f597ccc02346f8e16d90e7ad95e4407eab11abb3b7"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
