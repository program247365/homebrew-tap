cask "deskling" do
  version "0.7.0"
  sha256 "3fa018b5fcd962d2a3706ba84849acb3d7fa5725519a43304f828ea059906f70"

  url "https://github.com/program247365/deskling/releases/download/v#{version}/Deskling-#{version}.dmg"
  name "Deskling"
  desc "Pixel characters that walk your desktop and react to your coding agents"
  homepage "https://deskling.kbr.sh/"

  # The app updates itself (Sparkle); brew upgrade leaves it be unless asked with --greedy.
  auto_updates true
  depends_on macos: :sonoma

  app "Deskling.app"

  zap trash: [
    "~/Library/Preferences/sh.kbr.clawd.plist",
    "~/Library/Preferences/sh.kbr.deskling.plist",
  ]
end
