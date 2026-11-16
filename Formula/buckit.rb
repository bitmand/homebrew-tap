class Buckit < Formula
  desc "Two-pane terminal file manager for local files and S3-compatible stores"
  homepage "https://bitmand.dk/buckit"
  license "MIT"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://bitmand.dk/buckit/v#{version}/buckit-v#{version}-darwin-arm64"
      sha256 "b2c61ecf22a95695994da006dd22c1f9e1e5501245e1df8dad8968f4eaa0edc8"
    end
  end

  on_linux do
    on_intel do
      url "https://bitmand.dk/buckit/v#{version}/buckit-v#{version}-linux-x86_64"
      sha256 "cdf1446faf3557b49677a766772c9e449d20c83b13d5e780638c75a23dc0cf57"
    end
  end

  def install
    bin.install Dir["buckit-v#{version}-*"].first => "buckit"
  end

  test do
    assert_match "buckit #{version}", shell_output("#{bin}/buckit --version")
  end
end
