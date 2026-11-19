class Ccbox < Formula
  desc "Rust TUI box for managing Codex/Claude agent sessions"
  homepage "https://github.com/aileron-tech/ccbox"
  url "https://github.com/aileron-tech/ccbox/archive/refs/tags/v0.1.23.tar.gz"
  sha256 "e4f506c137109af30597e236904cc7ab2554362414b3d84aa92be262ca463f2a"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: "packages/ccbox")
  end

  test do
    system "#{bin}/ccbox", "--version"
  end
end

