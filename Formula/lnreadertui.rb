class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.com light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "9513679f073254c1ded612c183f12ae7ab448a0b03e1903459f7711aecd0ca82"
  license "MIT"

  depends_on "go" => :build

  def install
    # Static binary: brew bottles must run on any Linux/macOS.
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"lnreadertui", "."
  end
end
