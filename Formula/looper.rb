class Looper < Formula
  desc "CLI tool that plays a song on loop with a ratatui TUI and FFT visualizer"
  homepage "https://github.com/program247365/looper"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/program247365/looper/releases/download/v0.9.0/looper-aarch64-apple-darwin.tar.gz"
      sha256 "837642d9badc7625f33984a51a40da785d0f558c15fd6e5dea2bea929560b383"
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
