class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.3/macbat-darwin-arm64.tar.gz"
      sha256 "19fbed1bb3b2b4a0b92c68d8006351d2713ee8b8b6ecbb4696417987656aab5c"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.3/macbat-darwin-amd64.tar.gz"
      sha256 "46104cb170a34b5d2c00d41e8cd1cf08357debbbfa43ca37b35db3c1dd1d1422"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
