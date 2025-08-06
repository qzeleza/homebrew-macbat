class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.17/macbat-darwin-arm64.tar.gz"
      sha256 "1ac8357fa6f880f13212dacd99cc9671a0a03e591d9624a98aeda07cf721fd74"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.17/macbat-darwin-amd64.tar.gz"
      sha256 "7ea5b3acd415b5166cd8f6e4c113846dca7b61b0ee1a9989a4e82e0da8b4ef06"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
