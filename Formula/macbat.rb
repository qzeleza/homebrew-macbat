class Macbat < Formula
  desc "Утилита мониторинга аккумулятора (binary)"
  homepage "https://github.com/qzeleza/macbat"
  version "v2.1.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.12/macbat-darwin-arm64.tar.gz"
      sha256 "8b4d6b71154cdfd36944d22fb205f04e3b9658f484005ba35aae50d6c40d3b30"
    else
      url "https://github.com/qzeleza/macbat/releases/download/v2.1.12/macbat-darwin-amd64.tar.gz"
      sha256 "1773f5245eb01de91eef434ab3952b9304e135cfffa64b004451bfc7c29762ed"
    end
  end

  def install
    bin.install "macbat"
  end

  test do
    system "#{bin}/macbat", "--version"
  end
end
