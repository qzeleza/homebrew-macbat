class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.10/macbat-darwin-arm64.tar.gz"
      sha256 "426aa5412db026cb36698cbcfbf496880d572263dfe10c5dc207991dc952d752"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.10/macbat-darwin-amd64.tar.gz"
      sha256 "5fe0d335344ca143de7aed64538c5f4b4d6a0757cbf72037a0091b7c25e14262"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
