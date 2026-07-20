class Hackertuah < Formula
  desc "Terminal UI for browsing Hacker News"
  homepage "https://github.com/program247365/hackertuah"
  url "https://github.com/program247365/hackertuah/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "2142f92cc610cbc4d91b78b48c26364f69a9d6a3d83f861687924baa07446434"
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
