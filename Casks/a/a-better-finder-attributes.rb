cask "a-better-finder-attributes" do
  version "7.35"
  sha256 "ddfbd16e661b1c91fb1794457821fee4abe29775b400a73ba705e7ff6706d3d1"

  url "https://www.publicspace.net/download/signedABFA#{version.major}.zip"
  name "A Better Finder Attributes"
  desc "File and photo tweaking tool"
  homepage "https://www.publicspace.net/ABetterFinderAttributes/"

  livecheck do
    url "https://www.publicspace.net/app/signed_abfa#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "A Better Finder Attributes #{version.major}.app"

  zap trash: [
    "~/Library/Caches/net.publicspace.abfa#{version.major}",
    "~/Library/Cookies/net.publicspace.abfa#{version.major}.binarycookies",
    "~/Library/HTTPStorages/net.publicspace.abfa#{version.major}",
    "~/Library/HTTPStorages/net.publicspace.abfa#{version.major}.binarycookies",
    "~/Library/Preferences/net.publicspace.abfa#{version.major}.plist",
    "~/Library/Saved Application State/net.publicspace.abfa#{version.major}.savedState",
  ]
end
