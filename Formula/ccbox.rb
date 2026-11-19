class Ccbox < Formula
  desc "Rust TUI box for managing Codex/Claude agent sessions"
  homepage "https://github.com/aileron-tech/ccbox"
  url "https://github.com/aileron-tech/ccbox/archive/refs/tags/v0.1.21.tar.gz"
  sha256 "bf615b6352d4431a03aab9afeba79bb251eae5310de7f0ed16eae54e9570083f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/ccbox", "--version"
  end
end

