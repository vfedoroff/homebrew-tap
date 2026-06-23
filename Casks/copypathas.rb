cask "copypathas" do
  version "0.2.0"
  sha256 "8771d9765b583d71295dd288f13c2dcc96ec01ddf4ca4700f24b81277a8021f3"

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
