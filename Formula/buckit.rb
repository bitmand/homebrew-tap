class Buckit < Formula
  desc "Two-pane terminal file manager for local files and S3-compatible stores"
  homepage "https://bitmand.dk/buckit"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://bitmand.dk/buckit/v0.4.0/buckit-v0.4.0-darwin-arm64"
      sha256 "80b0a640ba6bb1ccbd00f6626a985d5c15593aa9e913c5b50b9ae46715005693"
    end
  end

  on_linux do
    on_intel do
      url "https://bitmand.dk/buckit/v0.4.0/buckit-v0.4.0-linux-x86_64"
      sha256 "347c8ac9092e4668ed7b25a053581735103caefa2eca49f95fd6adcedb402f03"
    end
  end

  def install
    bin.install Dir["buckit-v#{version}-*"].first => "buckit"
  end

  test do
    assert_match "buckit #{version}", shell_output("#{bin}/buckit --version")
  end
end
