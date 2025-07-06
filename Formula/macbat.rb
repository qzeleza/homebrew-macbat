class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.6/macbat-darwin-arm64.tar.gz"
      sha256 "407abbf39540afb4b701ecef9b5ab6f76c0e99e50da21767f90920ad3119e7b3"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.6/macbat-darwin-amd64.tar.gz"
      sha256 "8608a57a0220380405fa8d9265eef86dd7f7c9acbd68ca186a7b33a2b9a2e040"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
