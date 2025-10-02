class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.22/macbat-darwin-arm64.tar.gz"
      sha256 "feb9d526871738c3fa5ada58caf57afb4bd95c46d90186ba41fa2afe55917126"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.22/macbat-darwin-amd64.tar.gz"
      sha256 "67dd6b7333828c067130a785c8a14654ef560782ee7b1bc89cba861b391e87df"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
