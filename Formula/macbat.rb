class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.15/macbat-darwin-arm64.tar.gz"
      sha256 "46f35112ac9304a511ac5adb52e0c01d52f80b969ff28b4ba29725166157ee01"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.15/macbat-darwin-amd64.tar.gz"
      sha256 "7761c885b660f157561cc6e9ac42c50b3e13702e58c159d3ff5f35bc216c4d73"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
