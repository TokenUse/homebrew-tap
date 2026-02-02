class Tokenuse < Formula
  desc "Track and analyze Claude Code usage"
  homepage "https://tokenuse.ai"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tokenuse/tokenuse/releases/download/v#{version}/tokenuse_#{version}_darwin_amd64.tar.gz"
      sha256 "6335cc92f143c4b12be5c92e0d279ad8040d55902513e08448a9c7dc2060c54e"
    end

    on_arm do
      url "https://github.com/tokenuse/tokenuse/releases/download/v#{version}/tokenuse_#{version}_darwin_arm64.tar.gz"
      sha256 "30937924c9c533d05d6822ae999835b7d7e2d2256faaed09117220fe1445e7f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/tokenuse/tokenuse/releases/download/v#{version}/tokenuse_#{version}_linux_amd64.tar.gz"
      sha256 "ccd575815b010ee7cdd88299bfda63394d5c3e9f1abea3b1d35916617a121c52"
    end

    on_arm do
      url "https://github.com/tokenuse/tokenuse/releases/download/v#{version}/tokenuse_#{version}_linux_arm64.tar.gz"
      sha256 "cc6939c4f3676dd1d2a40fd5bfddaa4ceed3c5cdb078d9739c39b7b16d256d24"
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
