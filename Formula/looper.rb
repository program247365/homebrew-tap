class Looper < Formula
  desc "CLI tool that plays a song on loop with a ratatui TUI and FFT visualizer"
  homepage "https://github.com/program247365/looper"
  url "https://github.com/program247365/looper/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "e261ec25eaebe1026dc8bf9a1a5488f36da17c49d35ac6318f6e708d76772c22"
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
