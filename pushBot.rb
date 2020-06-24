

class PushBot
  def pushToGitHub(commit_titel)
    system "echo 'something is looking pale' >> 'test 01.01' "
    a = system 'git diff'
    system "git add ."
    system "git commit -m '#{commit_titel}'"
    branch = `git rev-parse --abbrev-ref HEAD`
    puts branch.strip.split.join
    # system "git push 'origin #{branch.strip.split().join}'"

  end
end


p = PushBot.new

p.pushToGitHub('commit_titel_102')
