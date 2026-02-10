class Kpub < Formula
  desc "Telegram chat monitor and ebook pipeline for Kobo"
  homepage "https://github.com/spacesedan/kpub"
  url "https://github.com/spacesedan/kpub/archive/refs/tags/v0.1.10.tar.gz"
  sha256 "4b8ff54d14705663035c1ecc3a9d53331b76de80be9eda55c06e41c15a1ffa11"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/kpub"
  end
end
