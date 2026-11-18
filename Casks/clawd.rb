cask "clawd" do
  version "0.1.0"
  sha256 "93480ee8e456ab50028d7c45f3ce17bb610b50d994946455703d64e5a229de8b"

  url "https://github.com/program247365/clawd/releases/download/v#{version}/Clawd-#{version}.dmg",
      verified: "github.com/program247365/clawd/"
  name "Clawd"
  desc "Unofficial menubar app that lets Clawd walk around your desktop"
  homepage "https://clawd.kbr.sh/"

  depends_on macos: :sonoma

  app "Clawd.app"

  zap trash: "~/Library/Preferences/sh.kbr.clawd.plist"
end
