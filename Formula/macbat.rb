class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.2.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.2.11/macbat-darwin-arm64.tar.gz"
      sha256 "ffbdd7d2d39605544ab1ea413964bd9acdcee818be96280906a80ba2d2f70925"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.2.11/macbat-darwin-amd64.tar.gz"
      sha256 "4cd41052a2278e6cea14463c7cbac51be9b2b356dbedc06c887cf4da3a085a85"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
