cask "filen" do
  arch arm: "arm64", intel: "x64"

  version "3.0.47"
  sha256 arm:   "041f30b361fb5b07f9039d380cf9f3e56b1180491a1ebf711cc5d2d81d5f741b",
         intel: "405a75b94f26814562f568e5098735ce28bbe80317f47eef920b993bc6b4ef69"

  url "https://cdn.filen.io/@filen/desktop/release/v#{version}/Filen_mac_#{arch}.dmg"
  name "Filen"
  desc "Desktop client for Filen.io"
  homepage "https://filen.io/"

  livecheck do
    url "https://cdn.filen.io/@filen/desktop/release/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Filen.app"

  zap trash: [
    "~/Library/Application Support/@filen",
    "~/Library/Application Support/filen-desktop",
    "~/Library/Caches/@filendesktop-updater",
    "~/Library/Caches/io.filen.desktop",
    "~/Library/Caches/io.filen.desktop.ShipIt",
    "~/Library/HTTPStorages/io.filen.desktop",
    "~/Library/Logs/filen-desktop",
    "~/Library/Preferences/io.filen.desktop.plist",
    "~/Library/Saved Application State/io.filen.desktop.savedState",
  ]
end
