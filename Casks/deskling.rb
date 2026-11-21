cask "deskling" do
  version "0.10.0"
  sha256 "b9a44229582cabe481262b5994f0dcea99374f56d094066a81a23659639b9c0f"

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
