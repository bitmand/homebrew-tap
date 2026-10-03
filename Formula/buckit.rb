class Buckit < Formula
  desc "Two-pane terminal file manager for local files and S3-compatible stores"
  homepage "https://bitmand.dk/buckit"
  license "MIT"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://bitmand.dk/buckit/v#{version}/buckit-v#{version}-darwin-arm64"
      sha256 "35d7d8a1d7b8ee5b11dfc1c3a1bea45288db0fadd76053758a98be775b8d81ed"
    end
  end

  on_linux do
    on_intel do
      url "https://bitmand.dk/buckit/v#{version}/buckit-v#{version}-linux-x86_64"
      sha256 "e58651392f9d97e7b98200891daee85dca5d9df3d1ca9581126a0ee65f1af392"
    end
  end

  def install
    bin.install Dir["buckit-v#{version}-*"].first => "buckit"
  end

  test do
    assert_match "buckit #{version}", shell_output("#{bin}/buckit --version")
  end
end
