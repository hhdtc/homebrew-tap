class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.net light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.8.tar.gz"
  sha256 "b14052138841356e91152906230546481375663f09ec2f4322d350a9beaf8aef"
  license "MIT"
  depends_on "go" => :build

  def install
    # Static binary: brew bottles must run on any Linux/macOS.
    ENV["CGO_ENABLED"] = "0"
    # Stamp the formula's version so `lnreadertui --version` reports the
    # installed release instead of "dev".
    system "go", "build", "-trimpath", "-ldflags", "-s -w -X main.version=#{version}",
           "-o", bin/"lnreadertui", "."
  end
end
