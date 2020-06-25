class Guardian < Formula
  desc "Guardian is a file watcher"
  head "http://github.com/f/guardian.git"

  depends_on "crystal" => :build
  depends_on "libevent"
  depends_on "libyaml"

  def install
    system "shards", "build", "--release"
    bin.install "bin/guardian"
  end
end