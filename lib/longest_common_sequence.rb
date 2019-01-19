require 'diff/lcs'

def lcs(x, y)
  Diff::LCS.LCS(x, y).join
end
