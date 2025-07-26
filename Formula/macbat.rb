class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.13/macbat-darwin-arm64.tar.gz"
      sha256 "03872eeceb5bbb7aa3b8269124458911a3d39b3d69ee88bc3a80c6988ab4c06d"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.13/macbat-darwin-amd64.tar.gz"
      sha256 "8d6b3dba9789aaf0036aaf0b2d6df5a2a60fa946cae9b90cb454c862ccc46393"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
