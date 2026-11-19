cask "deskling" do
  version "0.3.1"
  sha256 "01c245a0bef85abcbb2846326961e3ccb020688658bd12a6f4d697bafda76bf2"

  url "https://github.com/program247365/clawd/releases/download/v#{version}/Deskling-#{version}.dmg"
  name "Deskling"
  desc "Pixel characters that walk your desktop and react to your coding agents"
  homepage "https://deskling.kbr.sh/"

  depends_on macos: :sonoma

  app "Deskling.app"

  zap trash: [
    "~/Library/Preferences/sh.kbr.clawd.plist",
    "~/Library/Preferences/sh.kbr.deskling.plist",
  ]
end
