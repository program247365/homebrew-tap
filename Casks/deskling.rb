cask "deskling" do
  version "0.9.0"
  sha256 "6c899104e49686ba0a8d6034171024d215e7ad68d0119b902af367382e6a607e"

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
