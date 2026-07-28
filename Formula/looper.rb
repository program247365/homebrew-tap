class Looper < Formula
  desc "CLI tool that plays a song on loop with a ratatui TUI and FFT visualizer"
  homepage "https://github.com/program247365/looper"
  version "0.13.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/program247365/looper/releases/download/v0.13.4/looper-aarch64-apple-darwin.tar.gz"
      sha256 "6bf8fbdb0ec498724a6a81cec4c4dfffce0322b656fe8c028f41f5c66b031ebc"
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
