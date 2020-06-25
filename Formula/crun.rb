class Crun < Formula
  desc "shebang wrapper for Crystal"
  head "https://github.com/Val/crun.git"

  depends_on "crystal" => :build
  depends_on "libevent"
  depends_on "libyaml"

  def install
    system "shards", "build", "--release"
    bin.install "bin/crun"
  end
end