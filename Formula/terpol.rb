class Terpol < Formula
  desc "Secret-injecting MITM proxy"
  homepage "https://github.com/dakdevs/terpol"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dakdevs/terpol/releases/download/v0.1.0/terpol-x86_64-apple-darwin.tar.gz"
      sha256 "0d7d120f671fcaa33db92441c892e7bd1242d8ee63393755421cd157aab0b01e"
    end

    on_arm do
      url "https://github.com/dakdevs/terpol/releases/download/v0.1.0/terpol-aarch64-apple-darwin.tar.gz"
      sha256 "bfda6077aa3a9b3059af5890cabc28ed7c4d817447e2f7933af00003e10c149f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dakdevs/terpol/releases/download/v0.1.0/terpol-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ce2362d8cd862504974d5b1b598431ae73ed019335016e97b1e5fbe04fe51e0"
    end
  end

  def install
    bin.install "terpol"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terpol --version")
  end
end
