class Kpub < Formula
  desc "Telegram chat monitor and ebook pipeline for Kobo"
  homepage "https://github.com/spacesedan/kpub"
  url "https://github.com/spacesedan/kpub/archive/refs/tags/v0.1.9.tar.gz"
  sha256 "8aca22e4580983a1d57fd2c322b43562e99015cf2980b43a3e8e1d6ac7b7a2ef"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/kpub"
  end
end
