class Kpub < Formula
  desc "Telegram chat monitor and ebook pipeline for Kobo"
  homepage "https://github.com/spacesedan/kpub"
  url "https://github.com/spacesedan/kpub/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "91fe6ec1064168c75a55eb7941d7488196bfa8d4a24592a9e03a1c5d8cb5aca1"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/kpub"
  end
end
