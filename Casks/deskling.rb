cask "deskling" do
  version "0.8.0"
  sha256 "1e6fa8af1888b71e80d685ab48b2b70b835b2bbd1495b618dc046503c4afb2b0"

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
