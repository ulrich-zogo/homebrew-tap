class Ocgo < Formula
  desc "Use OpenCode Go with Claude Code, Codex CLI, and Codex Desktop"
  homepage "https://github.com/ulrich-zogo/ocgo"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ulrich-zogo/ocgo/releases/download/v0.1.0/ocgo_0.1.0_darwin_arm64.tar.gz"
      sha256 "b28f76fd9ba82fdb60dd9a95a56a75deda0bc71b72aabb1fb85d2d352d46d4f7"
    else
      url "https://github.com/ulrich-zogo/ocgo/releases/download/v0.1.0/ocgo_0.1.0_darwin_x86_64.tar.gz"
      sha256 "e2a351a156c1f31cf34a0f4fd371f46e3588f70202ee9f495b1c6a8cb4f6db86"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "\#{bin}/ocgo", "--help"
  end
end
