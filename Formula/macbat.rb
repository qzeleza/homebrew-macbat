class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.21/macbat-darwin-arm64.tar.gz"
      sha256 "683942e2533a64e1b51fac4f089226e4d1760b2f05728d21c2b0fe07fc22dee0"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.21/macbat-darwin-amd64.tar.gz"
      sha256 "3c859637e8104d54415bf43c56b7cd82ae34632527eabf28a6ab8990e4497c7a"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
