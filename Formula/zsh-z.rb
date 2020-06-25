class ZshZ < Formula
  desc "Jump quickly to directories that you have visited frecently. A native ZSH port of z.sh."
  head "https://github.com/agkozak/zsh-z.git"

  def install
    pkgshare.install "zsh-z.plugin.zsh"
  end
end