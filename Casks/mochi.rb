cask "mochi" do
  version "0.1.3"
  sha256 "cc7f203955115274b1ea752cabd4acef0f4d2e7b1b29a9625453de358765199a"

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
