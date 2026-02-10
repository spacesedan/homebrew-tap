class Kpub < Formula
  desc "Telegram chat monitor and ebook pipeline for Kobo"
  homepage "https://github.com/spacesedan/kpub"
  url "https://github.com/spacesedan/kpub/archive/refs/tags/v0.1.11.tar.gz"
  sha256 "c9ee0b1c52e2c404557fe5e3632d21bba9771b6316d4cfba17d4526c8957c8ba"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X main.version=#{version}"
    system "go", "build", *std_go_args(ldflags:), "./cmd/kpub"
  end
end
