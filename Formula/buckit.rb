class Buckit < Formula
  desc "Two-pane terminal file manager for local files and S3-compatible stores"
  homepage "https://bitmand.dk/buckit"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://bitmand.dk/buckit/v0.3.0/buckit-v0.3.0-darwin-arm64"
      sha256 "64ee190d10d849b64a4d26c8d6aa1042f8f43b2cd43b05a8e631d0eab3ffddf7"
    end
  end

  on_linux do
    on_intel do
      url "https://bitmand.dk/buckit/v0.3.0/buckit-v0.3.0-linux-x86_64"
      sha256 "fdde294197f13f7e75d336879a54cffdc9636ecf316d80435672f407f7aa4885"
    end
  end

  def install
    bin.install Dir["buckit-v#{version}-*"].first => "buckit"
  end

  test do
    assert_match "buckit #{version}", shell_output("#{bin}/buckit --version")
  end
end
