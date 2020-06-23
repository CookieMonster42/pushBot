

class PushBot
  def pushToGitHub(commit_titel)
    system "echo 'something is looking pale' >> 'test_the_difference?' "
    # a = system 'git diff'
    system "git add ."
    system "git commit -m '#{commit_titel}'"
    branch = `git rev-parse --abbrev-ref HEAD`
    system "git push '#{branch}'"

  end
end


p = PushBot.new

p.pushToGitHub('commit_titel_101')
