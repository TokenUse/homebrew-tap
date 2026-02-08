class Tokenuse < Formula
  desc "Track and analyze Claude Code usage"
  homepage "https://tokenuse.ai"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tokenuse/tokenuse/releases/download/v#{version}/tokenuse_#{version}_darwin_amd64.tar.gz"
      sha256 "13939e1178875593e4088bd81c5bb6aa31611968a31416ba682825800413d556"
    end

    on_arm do
      url "https://github.com/tokenuse/tokenuse/releases/download/v#{version}/tokenuse_#{version}_darwin_arm64.tar.gz"
      sha256 "b01b912344d98c731d47ab6db69685ac15f1dbf9820b7b80fd67419a98e0e33e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tokenuse/tokenuse/releases/download/v#{version}/tokenuse_#{version}_linux_amd64.tar.gz"
      sha256 "b5134a477a6140cf3bc4b43b7af4cee0e4abc74abaa1d533acf55707a9039329"
    end

    on_arm do
      url "https://github.com/tokenuse/tokenuse/releases/download/v#{version}/tokenuse_#{version}_linux_arm64.tar.gz"
      sha256 "5cddf627b6cae4b9ee8221c8a91aa9941a320fbfdc5f7c81bcb42149d7662d74"
    end
  end

  def install
    bin.install "tokenuse"
  end

  def post_install
    ohai "TokenUse installed!"
    ohai "Run 'tokenuse' to start tracking (auto signs in if needed)."
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tokenuse version")
  end
end
