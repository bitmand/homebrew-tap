class Buckit < Formula
  desc "Two-pane terminal file manager for local files and S3-compatible stores"
  homepage "https://bitmand.dk/buckit"
  license "MIT"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://bitmand.dk/buckit/v#{version}/buckit-v#{version}-darwin-arm64"
      sha256 "69e2d2d40c0f05e3bd87a9d27baa77a5333b3e1c03c91db7b0d3776f970660f7"
    end
  end

  on_linux do
    on_intel do
      url "https://bitmand.dk/buckit/v#{version}/buckit-v#{version}-linux-x86_64"
      sha256 "5d1b251193d0599b6fa9232c549764d9419b480be273bd27780508bb231ef82a"
    end
  end

  def install
    bin.install Dir["buckit-v#{version}-*"].first => "buckit"
  end

  test do
    assert_match "buckit #{version}", shell_output("#{bin}/buckit --version")
  end
end
