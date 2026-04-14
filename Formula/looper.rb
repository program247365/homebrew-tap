class Looper < Formula
  desc "CLI tool that plays a song on loop with a ratatui TUI and FFT visualizer"
  homepage "https://github.com/program247365/looper"
  url "https://github.com/program247365/looper/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "85ed55e771b3fc4604f282f0197fb61ee80a97667194584aa127fbc48cfa2112"
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
