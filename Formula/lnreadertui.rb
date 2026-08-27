class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.com light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "fa2001dd7058ad8b050d5c0b01f5cb313a5b4ada0d9b1d3fbf565276f8cffbf5"
  license "MIT"
  bottle do
    root_url "https://github.com/hhdtc/homebrew-tap/releases/download/v1.1.2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "58197222d9c00506d20b8afb4202158a6a28f88186759bafb5e631e9132fd8ca"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "a49d292be4b37619aedaec1249906fa9dd55c0cca157898d8ba41672a9e3ce87"
    sha256 cellar: :any_skip_relocation, sequoia: "f93bf3d0f886d4fe5470bed44de88127af00bfbbe04ad9ec2a6d657cfba37cd2"
    sha256 cellar: :any_skip_relocation, sonoma: "dfb34056f215a0f09b345d7673f6c98147092ca6ce29956ef1234e63ba9acb65"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "bd288624acf89361a4ee7f10772b6b1888adcbab37774c0c37ea0bc5e406628a"
  end
  bottle do
    root_url "https://github.com/hhdtc/homebrew-tap/releases/download/v1.1.2"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"lnreadertui", "."
  end
end
