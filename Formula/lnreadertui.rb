class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.com light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.5.tar.gz"
  sha256 "ec5a9bfb0836ce63e4d33f87f2dba1c9320c90ea9ac4700d674675367d0c36ae"
  license "MIT"
  bottle do
    root_url "https://github.com/hhdtc/homebrew-tap/releases/download/v1.1.5"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "49af36e58d94dc3d7d9b862708076b150e9dd1a3a4cd4fe48eca5a6eee306f91"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "6efa6cb87f8f7f26fa0bf44ac9ac89ae8d5183710f047d2a3dbeaf9f78bc0ba7"
    sha256 cellar: :any_skip_relocation, sequoia: "671424d54b624af20195a116158f02f35a6a5a8f34d4ff44a4e3ccfa60fb07b1"
    sha256 cellar: :any_skip_relocation, sonoma: "ef364b8ece51999bc3328635c79cfcf801bbc0669a9072c09d43367d622ec5d5"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "e345e90be4704e3f2ea798b1a282a4b66438ac4f880630e62d0c291b7b4a16fd"
  end

  depends_on "go" => :build

  def install
    # Static binary: brew bottles must run on any Linux/macOS.
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"lnreadertui", "."
  end
end
