class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.16/macbat-darwin-arm64.tar.gz"
      sha256 "9404188fa54809309691f85ee5f483c0d1be4eb56e8c556ae7dae9b04914415d"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.16/macbat-darwin-amd64.tar.gz"
      sha256 "37da1d0afd760d0bf5463f16ec3d55481e14421ce13b3870d0299ebbe0591446"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
