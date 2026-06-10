class Ocgo < Formula
  desc "Use OpenCode Go with Claude Code, Codex CLI, and Codex Desktop"
  homepage "https://github.com/ulrich-zogo/ocgo"
  version "0.0.0-test.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ulrich-zogo/ocgo/releases/download/v0.0.0-test.1/ocgo_0.0.0-test.1_darwin_arm64.tar.gz"
      sha256 "0fb1f3fa70551cdd180e6d2612e2fceb9b52e50ce9527fceef6affc50ee9d8a3"
    else
      url "https://github.com/ulrich-zogo/ocgo/releases/download/v0.0.0-test.1/ocgo_0.0.0-test.1_darwin_x86_64.tar.gz"
      sha256 "6f24ebec772d3899e7b4ee2c777abf4133070d523999a5b6181820e5d4d453cf"
    end
  end

  def install
    bin.install "ocgo"
  end

  test do
    system "\#{bin}/ocgo", "--help"
  end
end
