class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.com light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "fa2001dd7058ad8b050d5c0b01f5cb313a5b4ada0d9b1d3fbf565276f8cffbf5"
  license "MIT"
  bottle do
    root_url "https://github.com/hhdtc/homebrew-tap/releases/download/v1.1.2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "cb716e7ea2b044a64f1604753d3c8ed05db916f13e7070beeb0c6f3985afe1ac"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "41c65105aa2a9b0d7a353bf05601b241ff0cc5476a030ac518b63313690fba56"
    sha256 cellar: :any_skip_relocation, sequoia: "f2649efe7a16a9d8b32cc3b4626166e9ef38e0bcaefa0b8bd4e4c060208aaf5a"
    sha256 cellar: :any_skip_relocation, sonoma: "487d389f199cd9aea01d119dc121274127573bca28a5b7b17c0b0039b84d08be"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "389c53a8359421d26e64ecc7868e98d250dfc4d8c304698f691467683fa72e9f"
  end

  depends_on "go" => :build

  def install
    # Static binary: brew bottles must run on any Linux/macOS.
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"lnreadertui", "."
  end
end
