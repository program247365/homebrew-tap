class Looper < Formula
  desc "CLI tool that plays a song on loop with a ratatui TUI and FFT visualizer"
  homepage "https://github.com/program247365/looper"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/program247365/looper/releases/download/v0.6.3/looper-aarch64-apple-darwin.tar.gz"
      sha256 "b95391b1806c79590d854f9c24677a442f146bb430a0e30b069a4b3cabf124bf"
    end
  end

  depends_on "ffmpeg"
  depends_on "yt-dlp"

  head do
    url "https://github.com/program247365/looper.git", branch: "main"
    depends_on "rust" => :build
  end

  def install
    if build.head?
      system "cargo", "install", *std_cargo_args
    else
      bin.install "looper"
    end
  end

  test do
    assert_match "looper", shell_output("#{bin}/looper --help 2>&1")
  end
end
