class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.com light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "fa2001dd7058ad8b050d5c0b01f5cb313a5b4ada0d9b1d3fbf565276f8cffbf5"
  license "MIT"
  bottle do
    root_url "https://github.com/hhdtc/homebrew-tap/releases/download/v1.1.2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "fbb005ffa8eb491764cabc1fc8071e5a9b9758d7328519f50180e196137a9df1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "165b522bf3f85437af49aab1fcd82a047a7c84f8bc35b700e4390d796d2f265a"
    sha256 cellar: :any_skip_relocation, sequoia: "ff01ba815c16a7fbccecf2501fd7bee1b54d71cef6c795addbe89803c27b0164"
    sha256 cellar: :any_skip_relocation, sonoma: "1dc38c2727ed415dbc150e3c21f682a54ff6bc886115b2919506086296367f81"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c4c65db8811b9fd6cd06b8fca6fda5490b2f515812ce08e9e76f7e542a09754c"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"lnreadertui", "."
  end
end
