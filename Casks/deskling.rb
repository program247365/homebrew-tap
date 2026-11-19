cask "deskling" do
  version "0.3.0"
  sha256 "3e238fef268a536f2d9b79cd06bca09f9b7582e574b25fde66ddc45fe846c5a1"

  url "https://github.com/program247365/clawd/releases/download/v#{version}/Deskling-#{version}.dmg"
  name "Deskling"
  desc "Pixel characters that walk your desktop and react to your coding agents"
  homepage "https://clawd.kbr.sh/"

  depends_on macos: :sonoma

  app "Deskling.app"

  zap trash: [
    "~/Library/Preferences/sh.kbr.clawd.plist",
    "~/Library/Preferences/sh.kbr.deskling.plist",
  ]
end
