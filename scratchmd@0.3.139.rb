class ScratchmdAT03139 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.139"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.139/scratchmd_darwin_arm64.tar.gz"
      sha256 "7e0cd00a1a301d00da0976a838f661c691ffe0c782b93a04bed62a68fa951391"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.139/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.139/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.139/scratchmd_linux_amd64.tar.gz"
      sha256 "5648baf95c8d131bdfdf67b41441dc82a530998f9a3ce8a3f5dc99ec257268a5"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
