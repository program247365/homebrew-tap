cask "clawd" do
  version "0.2.0"
  sha256 "9a1ad677cc24a164f51a72329d1c5ab87872042ccf13ec6e79a6a774bb1536c0"

  url "https://github.com/program247365/clawd/releases/download/v#{version}/Clawd-#{version}.dmg"
  name "Clawd"
  desc "Unofficial menubar app that lets Clawd walk around your desktop"
  homepage "https://clawd.kbr.sh/"

  depends_on macos: :sonoma

  app "Clawd.app"

  zap trash: "~/Library/Preferences/sh.kbr.clawd.plist"
end
