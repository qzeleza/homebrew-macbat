class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.11"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.11/macbat-darwin-arm64.tar.gz"
      sha256 "690b37c87a6ba7723606fb4c353a9bdecf23af804ca169baecd8b4dd1352d765"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.11/macbat-darwin-amd64.tar.gz"
      sha256 "cad23f22e17deeea026c060d9f75d81cecdf1ab4a21d2e018e7c524b6a49b090"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
