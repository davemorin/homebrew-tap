class Supacrawl < Formula
  desc "Mirror Supabase/Postgres into local SQLite for search and offline analysis"
  homepage "https://github.com/davemorin/supacrawl"
  url "https://github.com/davemorin/supacrawl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "52b65112cdc25f2887a8a570e1ddb645e1f108fd95b40b24875c9071e75640e7"
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
