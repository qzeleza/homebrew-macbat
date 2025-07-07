class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.9/macbat-darwin-arm64.tar.gz"
      sha256 "54a181b00f8528ff856758b9ea355d5ccf7ecba0ce6d8964f76a58ac19afe031"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.9/macbat-darwin-amd64.tar.gz"
      sha256 "b6a0d6205cfb18973ea301fb11e242af230bb097a950dd2bf710d4f9b3b540dd"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
