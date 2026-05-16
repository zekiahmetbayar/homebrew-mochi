cask "mochi" do
  version "0.1.2"
  sha256 "c61c54751b5a63f64255a6a901fa169979560503d3c20d8aaf37e10efe2a918f"

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
