cask "copypathas" do
  version "0.2.0"
  sha256 "17b06f76605c96efb5a5d15bf29c66e9637421a9a60946ae6c8d08ececee09d6"

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
