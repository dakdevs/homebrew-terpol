class Terpol < Formula
  desc "Secret-injecting MITM proxy"
  homepage "https://github.com/dakdevs/terpol"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/dakdevs/terpol/releases/download/v0.1.1/terpol-x86_64-apple-darwin.tar.gz"
      sha256 "9b8549f770f17358a04a98365562b48816b6c043a09e83840fd5adb00ef89531"
    end

    on_arm do
      url "https://github.com/dakdevs/terpol/releases/download/v0.1.1/terpol-aarch64-apple-darwin.tar.gz"
      sha256 "4e6bd656593b89bdd9d04e6a7515753fbf5e87f8b6a4f4c21376516f3276a80b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/dakdevs/terpol/releases/download/v0.1.1/terpol-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f5acc0e996a94da47245b5504eb9e9de4e78bb448a67a2f5281f89a244262281"
    end
  end

  def install
    bin.install "terpol"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/terpol --version")
  end
end
