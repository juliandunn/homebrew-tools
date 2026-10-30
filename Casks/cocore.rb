cask "cocore" do
  version "0.9.61"
  sha256 "0f59e2c86f6edf5562aabdcb05fcff9deceea6c07786f30f8a33c6284768bd7d"

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
