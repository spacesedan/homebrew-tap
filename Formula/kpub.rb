class Kpub < Formula
  desc "Telegram chat monitor and ebook pipeline for Kobo"
  homepage "https://github.com/spacesedan/kpub"
  url "https://github.com/spacesedan/kpub/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "fb18f1dc2f91ac5fd9d560985c5a5395063337030ee5a1ed46fbeae9fbd20c05"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/kpub"
  end
end
