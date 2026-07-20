class Hackertuah < Formula
  desc "Terminal UI for browsing Hacker News"
  homepage "https://github.com/program247365/hackertuah"
  url "https://github.com/program247365/hackertuah/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
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
