class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.com light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "9513679f073254c1ded612c183f12ae7ab448a0b03e1903459f7711aecd0ca82"
  license "MIT"
  bottle do
    root_url "https://github.com/hhdtc/homebrew-tap/releases/download/v1.1.3"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "04404d488ce97c34dcc71330ce78f906eb0af2cf4035e78206e3cf020cb0642e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e0e5ddc879decd3783f0523986686774965128fcf3a9b3d3d91bbdfcb6ead58e"
    sha256 cellar: :any_skip_relocation, sequoia: "261bb419b0a4ae2f07c5defdf99c2274640d77aa29437dbfe06aef7f8fa3a1d7"
    sha256 cellar: :any_skip_relocation, sonoma: "9f46d3fea835b5fa209d3bfd1cdabbb8c7df7d155bd0abef0c001bafe36cecaa"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f27bd3030f5962dde3568a890093ab4c37c0424e6eb62eb11f24b9a75450ddfa"
  end

  depends_on "go" => :build

  def install
    # Static binary: brew bottles must run on any Linux/macOS.
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"lnreadertui", "."
  end
end
