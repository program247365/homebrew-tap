class Agentd < Formula
  desc "Archive, redact, sync and browse your coding-agent sessions"
  homepage "https://github.com/program247365/agentd"
  url "https://github.com/program247365/agentd/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "9ba1b6a0fbde796f6378470dd605265ed560da1fcf31504252b4eb261e5a81cc"
  license "MIT"
  head "https://github.com/program247365/agentd.git", branch: "main"

  depends_on "rust" => :build
  depends_on "dolt"
  depends_on :macos

  def install
    system "cargo", "install", *std_cargo_args
  end

  def caveats
    <<~EOS
      Start the browser (127.0.0.1:3850) and archive every 30 minutes:
        agentd service install
      Claude Code deletes transcripts after 30 days by default; to keep them,
      set "cleanupPeriodDays": 36500 in ~/.claude/settings.json.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentd --version")
    ENV["AGENTD_HOME"] = testpath/"agentd"
    ENV["AGENTD_MACHINE"] = "test"
    assert_match "local-only", shell_output("#{bin}/agentd sync status")
  end
end
