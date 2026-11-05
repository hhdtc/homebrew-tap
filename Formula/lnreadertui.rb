class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.net light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.6.tar.gz"
  sha256 "989950492cc60bfb54949817e327cf53022626ceec5a46ad841324d8f66bc355"
  license "MIT"
  depends_on "go" => :build

  def install
    # Static binary: brew bottles must run on any Linux/macOS.
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"lnreadertui", "."
  end
end
