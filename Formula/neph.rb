class Neph < Formula
  desc "A modern command line job processor, similar with make command"
  head "https://github.com/tbrand/neph.git"

  depends_on "crystal" => :build
  depends_on "libevent"
  depends_on "libyaml"

  def install
    system "shards", "build", "--release"
    bin.install "bin/neph"
  end
end
