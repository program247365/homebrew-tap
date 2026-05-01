class Looper < Formula
  desc "CLI tool that plays a song on loop with a ratatui TUI and FFT visualizer"
  homepage "https://github.com/program247365/looper"
  url "https://github.com/program247365/looper/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "5c994e23a25805e1fa8bbf4db82274195e8ee8e82c4b32b7b6ad53c62eed3206"
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
