class Buckit < Formula
  desc "Two-pane terminal file manager for local files and S3-compatible stores"
  homepage "https://bitmand.dk/buckit"
  url "https://bitmand.dk/buckit/v0.2.2/buckit-v0.2.2-darwin-arm64"
  sha256 "a9cde1f11370f5a9d5b15eeba2c159094f859fea8619af3b3e39d28b05887a27"
  license "MIT"
  version "0.2.2"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "buckit-v#{version}-darwin-arm64" => "buckit"
  end

  test do
    assert_match "buckit #{version}", shell_output("#{bin}/buckit --version")
  end
end
