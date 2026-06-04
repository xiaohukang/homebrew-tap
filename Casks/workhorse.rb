cask "workhorse" do
  version "0.1.0"
  sha256 "f6e235fe08672bfa0d29c82940d4d19e12b75a6a6461dc40759960565b5113ba"

  url "https://github.com/xiaohukang/WorkHorse/releases/download/v#{version}/WorkHorse-#{version}.zip"
  name "牛马时光"
  desc "菜单栏常驻的工作记录与专注提醒应用"
  homepage "https://github.com/xiaohukang/WorkHorse"

  livecheck do
    url :url
    strategy :github_latest_release
  end

  depends_on macos: ">= :ventura"

  app "WorkHorse.app"

  zap trash: [
    "~/Library/Application Support/WorkHorse",
    "~/Library/Caches/com.workhorse.menu",
    "~/Library/Logs/com.workhorse.menu",
    "~/Library/Preferences/com.workhorse.menu.plist",
  ]
end
