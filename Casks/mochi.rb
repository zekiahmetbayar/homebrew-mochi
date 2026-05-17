cask "mochi" do
  version "0.1.5"
  sha256 "87eb28fdd7a2df7b4d88a85c595ca5df91857118ee0c16b9c9e34d6fa1593025"

  url "https://github.com/zekiahmetbayar/mochi/releases/download/v#{version}/Mochi-#{version}.dmg"
  name "Mochi"
  desc "Pixel-art companion that lives above your macOS menu bar"
  homepage "https://github.com/zekiahmetbayar/mochi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "Mochi.app"

  zap trash: [
    "~/Library/Preferences/com.zekiahmetbayar.mochi.plist",
    "~/Library/Application Support/Mochi",
  ]
end
