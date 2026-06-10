class Ocgo < Formula
  desc "Use OpenCode Go with Claude Code, Codex CLI, and Codex Desktop"
  homepage "https://github.com/ulrich-zogo/ocgo"
  version "0.0.0-test.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ulrich-zogo/ocgo/releases/download/v0.0.0-test.1/ocgo_0.0.0-test.1_darwin_arm64.tar.gz"
      sha256 "09bab71cb1254577839ef05ca5a49326e2c694fe81ea3bc7fd8b77d2f95514b9"
    else
      url "https://github.com/ulrich-zogo/ocgo/releases/download/v0.0.0-test.1/ocgo_0.0.0-test.1_darwin_x86_64.tar.gz"
      sha256 "34f3d3163cf5c2bd596e61cf63424dbc9d9c39bc9ba91188b193b352191aa0ac"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "\#{bin}/ocgo", "--help"
  end
end
