cask "brother-mldrivers" do
  version "1.5.0"
  sha256 "a438aa1f33362f2a479458c2f2b65b4c63587d7bc1a7c39543a860e830aa0ea9"

  url "https://download.brother.com/welcome/dlf104739/Brother_PrinterDrivers_MonochromeLaser_#{version.gsub('.','_')}.dmg"
  name "brother-mldrivers"
  desc "Printer driver for Brother monochrome laser printers"
  homepage "https://www.brother-usa.com/brother-support/driver-downloads"

  pkg "Brother_PrinterDrivers_MonochromeLaser.pkg"

  uninstall pkgutil: "com.Brother.Brotherdriver.Brother_PrinterDrivers_MonochromeLaser",
            rmdir: "/Library/Printers/Brother"
  
  # No zap stanza required
end
