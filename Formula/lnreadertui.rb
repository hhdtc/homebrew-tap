class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.com light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "0d09090e7a67ea0d883efd0697216d4660cfd39c42bb96dfd93d04e2b146eacc"
  license "MIT"

  depends_on "go" => :build

  def install
    # Static binary: brew bottles must run on any Linux/macOS.
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"lnreadertui", "."
  end
end
