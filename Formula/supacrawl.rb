class Supacrawl < Formula
  desc "Mirror Supabase/Postgres into local SQLite for search and offline analysis"
  homepage "https://github.com/openclaw/supacrawl"
  url "https://github.com/openclaw/supacrawl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "ee51ac93b9f754e5bc7d7f71defaecc28c21f26f1d0bf165e78cc55b9311ecd4"
  license "MIT"

  depends_on "go" => :build

  def install
    ldflags = "-s -w -X github.com/openclaw/supacrawl/internal/cli.Version=#{version}"
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/supacrawl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/supacrawl version")
  end
end
