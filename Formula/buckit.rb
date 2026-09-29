class Buckit < Formula
  desc "Two-pane terminal file manager for local files and S3-compatible stores"
  homepage "https://bitmand.dk/buckit"
  license "MIT"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://bitmand.dk/buckit/v#{version}/buckit-v#{version}-darwin-arm64"
      sha256 "4dd114295abba019bb35a14ba86c29097f527963cc21f703da86ad92952c61ca"
    end
  end

  on_linux do
    on_intel do
      url "https://bitmand.dk/buckit/v#{version}/buckit-v#{version}-linux-x86_64"
      sha256 "f2cc03cb1abe21eba09007d03b1dea66b51d6b557b308aa946761df6c80ec008"
    end
  end

  def install
    bin.install Dir["buckit-v#{version}-*"].first => "buckit"
  end

  test do
    assert_match "buckit #{version}", shell_output("#{bin}/buckit --version")
  end
end
