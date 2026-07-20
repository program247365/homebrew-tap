class Hackertuah < Formula
  desc "Terminal UI for browsing Hacker News"
  homepage "https://github.com/program247365/hackertuah"
  url "https://github.com/program247365/hackertuah/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "423a2d0c0df7386997057c4982ba721d3a8c15b360b2f75964cc24307a3d2c50"
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
