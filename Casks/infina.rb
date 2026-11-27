cask "infina" do
  version "1.48.4"
  sha256 "f3ab497d69cf7b4825259caf74b6c76b9faab4231e461a52fd5c313326385060"

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
