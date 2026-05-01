class Looper < Formula
  desc "CLI tool that plays a song on loop with a ratatui TUI and FFT visualizer"
  homepage "https://github.com/program247365/looper"
  url "https://github.com/program247365/looper/archive/refs/tags/v0.5.2.tar.gz"
  sha256 "73e4ac3e53ed7751bf00dd8f8c6e9ef4ae37fe2cb36cdd2f50bd9542f231bedb"
  license "MIT"
  head "https://github.com/program247365/looper.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "looper", shell_output("#{bin}/looper --help 2>&1")
  end
end
