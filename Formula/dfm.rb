class Dfm < Formula
  desc "dfm is a dotfiles manager"
  head "https://github.com/jjlorenzo/dfm.git"

  depends_on "crystal" => :build
  depends_on "libevent"
  depends_on "libyaml"

  depends_on "git"
  depends_on "git-crypt"

  def install
    system "shards", "build", "--release"
    bin.install "bin/dfm"
    bin.install "bin/dfm-crun"
    bin.install "bin/dfm-neph"
  end
end