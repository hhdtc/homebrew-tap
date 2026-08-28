class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.com light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.4.tar.gz"
  sha256 "0d09090e7a67ea0d883efd0697216d4660cfd39c42bb96dfd93d04e2b146eacc"
  license "MIT"
  bottle do
    root_url "https://github.com/hhdtc/homebrew-tap/releases/download/v1.1.4"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "bbf7862634c4cb1c02b9b54b40e3d1806199b808591f64298e65273e5f288c38"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "aa05907414d721ac4c19aa3994ea068d11a964581c9868256b735bd7e55fb52d"
    sha256 cellar: :any_skip_relocation, sequoia: "0d32d3d2c41e0eed823d20df07b3762b794be132a054a1b9736a6d903339cb03"
    sha256 cellar: :any_skip_relocation, sonoma: "84908db85cab6036574e7fe6fb480f1c8da3f1c4ea5469678a71c518ba6f2e8f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "4574bfa387aeccc0246da75f0f559cc64bbc1d396efd2a817b3dd18463e9b06c"
  end

  depends_on "go" => :build

  def install
    # Static binary: brew bottles must run on any Linux/macOS.
    ENV["CGO_ENABLED"] = "0"
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"lnreadertui", "."
  end
end
