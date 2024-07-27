class Cap < Formula
  desc "cap code assistant program"
  homepage "https://github.com/isaacphi/codeassistantprogram"
  url "https://github.com/isaacphi/codeassistantprogram/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "275c25213a8fe86d548401520be023472a24ce46a65d39592b6d8689a748de95"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "cap", *std_go_args(ldflags: "-s -w")
    bin.install "cap"
  end

  test do
    system "#{bin}/cap", "--version"
  end
end
