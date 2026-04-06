class Looper < Formula
  desc "CLI tool that plays a song on loop with a ratatui TUI and FFT visualizer"
  homepage "https://github.com/program247365/looper"
  url "https://github.com/program247365/looper/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "21a23c0112142db6d6c1e5fcff8c8f30bcf82c0f7c1020cb24a61d870e5eb54b"
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
