class Ccbox < Formula
  desc "Rust TUI box for managing Codex/Claude agent sessions"
  homepage "https://github.com/diskd-ai/ccbox"
  url "https://github.com/diskd-ai/ccbox/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e7f20efc6b00077b2f04b2a945cd51aeacee5b936a3017e720890dfebb4f892f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/ccbox", "--version"
  end
end

