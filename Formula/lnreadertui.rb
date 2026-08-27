class Lnreadertui < Formula
  desc "Terminal reader for bilinovel.com light novels: search, download as EPUB, read with auto progress"
  homepage "https://github.com/hhdtc/LNReaderTUI"
  url "https://github.com/hhdtc/LNReaderTUI/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "fa2001dd7058ad8b050d5c0b01f5cb313a5b4ada0d9b1d3fbf565276f8cffbf5"
  license "MIT"
  bottle do
    root_url "https://github.com/hhdtc/homebrew-tap/releases/download/v1.1.2"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "527436ac70ee6ea05aae3a5a18fbc24a56aeb0b903c1df087623087aa69b3e97"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "d72ce72ba3f9a788724a962019b34594c4f272d7858eb1dde991d2beb90bb783"
    sha256 cellar: :any_skip_relocation, sequoia: "828143517b8765727dcd869bcc5e431bf08fd1340a3fa5434561058af8ac53d6"
    sha256 cellar: :any_skip_relocation, sonoma: "34f989ffbb63099ba2fef21d481abd4c4d1808ee13af2dcf537d3a5e1969f85a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "9cbec26227b66ef9ca5708ea52044416e413bbdb056d5d311136b43abd204f09"
  end

  depends_on "go" => :build

  def install
    system "go", "build", "-trimpath", "-ldflags", "-s -w", "-o", bin/"lnreadertui", "."
  end
end
