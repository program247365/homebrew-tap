cask "deskling" do
  version "0.9.2"
  sha256 "2587f98c1b54efb117509f85d7c8c312344910e84fc9773510abe858e43d6eff"

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
