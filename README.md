# hukang/homebrew-tap

个人 Homebrew Tap。

## 用法

```bash
brew tap hukang/tap
brew install --cask workhorse
```

升级：

```bash
brew update && brew upgrade --cask workhorse
```

## 包含的 Cask

- [`workhorse`](Casks/workhorse.rb)：牛马时光 —— macOS 菜单栏常驻工作记录与专注提醒应用。

## 维护说明

- `Casks/workhorse.rb` 里的 `version` 和 `sha256` 需要在每次发版后更新一次。
- 发版后用下列命令获取新的 sha256：

  ```bash
  shasum -a 256 <(curl -fsSL https://github.com/hukang/WorkHorse/releases/latest/download/WorkHorse-0.1.0.zip)
  ```
