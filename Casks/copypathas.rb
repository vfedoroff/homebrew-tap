cask "copypathas" do
  version "0.3.0"
  sha256 "07d301056095f876977eed8556a29308699782e302db066876028bc43e381185"

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
