cask "copypathas" do
  version "0.4.0"
  sha256 "28fc76294d40e63f659c4527ac00b17b0b52f3787498682e9cf1cf977d6c99f6"

  url "https://github.com/vfedoroff/copypathas/releases/download/v#{version}/CopyPathAs.dmg"
  name "Copy Path As"
  desc "Finder extension to copy paths of selected files and folders"
  homepage "https://github.com/vfedoroff/copypathas"

  depends_on macos: :sequoia

  app "CopyPathAs.app"

  zap trash: [
    "~/Library/Application Scripts/com.vfedoroff.CopyPathAs",
    "~/Library/Application Scripts/com.vfedoroff.CopyPathAs.FinderExtension",
    "~/Library/Containers/com.vfedoroff.CopyPathAs",
    "~/Library/Containers/com.vfedoroff.CopyPathAs.FinderExtension",
    "~/Library/Preferences/com.vfedoroff.CopyPathAs.plist",
  ]
end
