cask "mochi" do
  version "0.1.4"
  sha256 "80dbc6b4e55a18177b87d85eb11cdc99dc50bfcee79b227434dc7558572a34bc"

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
