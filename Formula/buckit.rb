class Buckit < Formula
  desc "Two-pane terminal file manager for local files and S3-compatible stores"
  homepage "https://bitmand.dk/buckit"
  license "MIT"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://bitmand.dk/buckit/v0.2.2/buckit-v0.2.2-darwin-arm64"
      sha256 "a9cde1f11370f5a9d5b15eeba2c159094f859fea8619af3b3e39d28b05887a27"
    end
  end

  on_linux do
    on_intel do
      url "https://bitmand.dk/buckit/v0.2.2/buckit-v0.2.2-linux-x86_64"
      sha256 "03feb9abcaeb2b8482e7c4a4877f81d284d1344a52d55eba32d864e6092cf32a"
    end
  end

  def install
    bin.install Dir["buckit-v#{version}-*"].first => "buckit"
  end

  test do
    assert_match "buckit #{version}", shell_output("#{bin}/buckit --version")
  end
end
