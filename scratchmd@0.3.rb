class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.238"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.238/scratchmd_darwin_arm64.tar.gz"
      sha256 "97ae4ff127e1a2fd4958028b644b9a7ad5ae865efcfa2cd1ad1fd3aa7bde401f"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.238/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.238/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.238/scratchmd_linux_amd64.tar.gz"
      sha256 "29c750cb345b95a8fe6acdb2ea0c574093d41e6f41084460b85e2bdb3c8e745f"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
