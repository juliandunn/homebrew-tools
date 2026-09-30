cask "cocore" do
  version "0.9.58"
  sha256 "897ebd8971415a43e02d94dab9893aeab97d38d72de3ae7ac13be57b27dfde39"

  url "https://cocore.dev/agent/app"
  name "cocore"
  desc "Agent for co/core, the community LLM pool"
  homepage "https://cocore.dev/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      headers["x-cocore-release"]&.delete_prefix("v")
    end
  end

  depends_on macos: :ventura

  app "cocore.app"

  zap trash: [
    "~/Library/Application Support/dev.cocore.menubar",
    "~/Library/Caches/dev.cocore.menubar",
    "~/Library/Preferences/dev.cocore.menubar.plist",
  ]
end
