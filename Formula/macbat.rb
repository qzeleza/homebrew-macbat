class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.18/macbat-darwin-arm64.tar.gz"
      sha256 "e90fb8788e4d163b29c388c7f899051c0a5a3e8fb9cdc80e9ca993219dd91b67"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.18/macbat-darwin-amd64.tar.gz"
      sha256 "496c951b18334347f7b24fb5723a64c34eeb1fd9089adafcee0ac6fba2aa02fd"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
