class StormSshCompletion < Formula
  desc "Completion for storm-ssh"
  homepage "https://github.com/vigo/stormssh-completion"
  url "https://github.com/vigo/stormssh-completion/archive/0.1.0.tar.gz"
  sha256 "fa1ee4113e4e64109bb35f53a54b08c5f1ce9995b48c204aae7a50bd983a5dfe"
  
  bottle :unneeded

  def install
    bash_completion.install "storm"
  end

  test do
    assert_match "-F __storm",
      shell_output("source #{bash_completion}/storm && complete -p storm")
  end
end