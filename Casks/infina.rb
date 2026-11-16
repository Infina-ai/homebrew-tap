cask "infina" do
  version "1.45.26"
  sha256 "14da3f1a6330628d31a84b24dd7c8eb99be43573f37c511dd5447c9413055a74"

  url "https://downloads.infina.so/v#{version}/mac/infina-desktop-#{version}-macos-universal.dmg"
  name "Infina"
  desc "Voice typing and dictation"
  homepage "https://www.infina.so/"

  livecheck do
    url "https://downloads.infina.so/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Infina.app"

  zap trash: [
    "~/Library/Application Support/infina",
    "~/Library/Caches/com.infinalabs.infina",
    "~/Library/Caches/com.infinalabs.infina.ShipIt",
    "~/Library/Caches/Infina",
    "~/Library/Caches/infina-updater",
    "~/Library/Caches/InfinaParakeet",
    "~/Library/HTTPStorages/com.infinalabs.infina",
    "~/Library/Logs/Infina",
    "~/Library/Preferences/com.infinalabs.infina.plist",
    "~/Library/Saved Application State/com.infinalabs.infina.savedState",
  ]
end
