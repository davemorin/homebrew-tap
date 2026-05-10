class Supacrawl < Formula
  desc "Mirror Supabase/Postgres into local SQLite for search and offline analysis"
  homepage "https://github.com/davemorin/supacrawl"
  url "https://github.com/davemorin/supacrawl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "400f6fd8d1a5f9495b34d5c5a04c4a64c2cc4aa3ea2e078816d038d3b24b1b80"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/davemorin/supacrawl/internal/cli.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/supacrawl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supacrawl version")
  end
end
