class Hackertuah < Formula
  desc "Terminal UI for browsing Hacker News"
  homepage "https://github.com/program247365/hackertuah"
  url "https://github.com/program247365/hackertuah/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "02443117bbf925a2d2b219b6605ac834582ef381e5c6a6fb97a73c923c9d75bc"
  license "MIT"
  head "https://github.com/program247365/hackertuah.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_predicate bin/"hackertuah", :exist?
  end
end
