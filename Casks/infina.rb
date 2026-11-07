cask "infina" do
  version "1.45.13"
  sha256 "8a1e6731854730cd5cafa8cd07702c41ad42aa719e58213ac726020eccfd36ca"

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
