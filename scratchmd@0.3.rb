class ScratchmdAT03 < Formula
  desc "Scratch content management CLI"
  homepage "https://github.com/whalesync/scratch-cli"
  version "0.3.73"

  on_macos do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.73/scratchmd_darwin_arm64.tar.gz"
      sha256 "cbd8fa0d857f0199075924061da959531a4e0bea39c6f44822cc3ac753fc6036"
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.73/scratchmd_darwin_amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.73/scratchmd_linux_arm64.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/whalesync/scratch-cli/releases/download/v0.3.73/scratchmd_linux_amd64.tar.gz"
      sha256 "46eeca6d77750a3a8cff7afffdf8dae545bb2182ec698f22fc83aad05fc81fd7"
    end
  end

  def install
    bin.install "scratchmd"
  end

  test do
    system "#{bin}/scratchmd --version"
  end
end
