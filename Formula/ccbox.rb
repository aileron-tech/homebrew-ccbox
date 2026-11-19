class Ccbox < Formula
  desc "Rust TUI box for managing Codex/Claude agent sessions"
  homepage "https://github.com/aileron-tech/ccbox"
  url "https://github.com/aileron-tech/ccbox/archive/refs/tags/v0.1.22.tar.gz"
  sha256 "984bf05c0bd5bda6f11613173cecbf52faac03efdd213c9a0b4c41a6dcc49484"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/ccbox", "--version"
  end
end

