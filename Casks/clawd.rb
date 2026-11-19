cask "clawd" do
  version "0.2.1"
  sha256 "97d27d5ecb78e8f5b3ca6de2a2cb380e6b4351795ee01c85192cef6a37303bbe"

  url "https://github.com/program247365/clawd/releases/download/v#{version}/Clawd-#{version}.dmg"
  name "Clawd"
  desc "Unofficial menubar app that lets Clawd walk around your desktop"
  homepage "https://clawd.kbr.sh/"

  depends_on macos: :sonoma

  app "Clawd.app"

  zap trash: "~/Library/Preferences/sh.kbr.clawd.plist"
end
