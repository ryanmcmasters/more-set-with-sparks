#more set with sparks
live_loop :bass do
  
  use_bpm 100
  use_synth :prophet
  
  # p = [43,50,42,45,55,36,42,40,47,51,53]
  p = [43]
  
  r = [
    [3,3,3,3,3,3],
    [3,3,3,3,3],
    [2],
    [2,3],
    [3,3,3,3,3,3],
    [2,3,2,3,2,3,2,3],
    [2],
    [3,3,3,3],
    [1],
    [3],
    [2,2,3,2,2]
  ]
  
  q = 0
  p.size.times do
    s = 0
    r.size.times do
      it = 0
      r[s].size.times do
        t = 0
        r[s][it].times do
          arr = [28 + 5, p[q] + 5, (p[q]+7) + 5]
          play arr[t]
          sleep 0.25
          t = t + 1
        end
        it = it + 1
      end
      s = s + 1
    end
    q = q + 1
  end
end



