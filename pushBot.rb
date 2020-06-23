

class PushBot
  def pushToGitHub(branch, commit_titel)
    system "echo 'something is looking pale' >> 'test_the_difference?' "
    a = system 'git diff'
    system "git add ."
    system "git commit -m '#{commit_titel}'"
    system "git push 'origin #{branch}'"
  end
end


p = PushBot.new

p.pushToGitHub('master', 'commit_titel_101')
