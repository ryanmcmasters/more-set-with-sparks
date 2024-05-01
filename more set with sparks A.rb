#more set with sparks A

live_loop :bass do
  
  use_synth :chipbass
  use_bpm 60
  
  r = [
    [2,3,2].ring,
    [3,3,3].ring,
    [3,2,2,2].ring,
    [2].ring,
    [2,3,2].ring,
    [3].ring,
    
    [3,2,2,2].ring,
    [2,3,2,2].ring,
    [2,3].ring,
    [3,2,3,2].ring,
    [3,2,3].ring
  ]
  
  i = 0
  
  r.size.times do
    t = 0
    r[i].size.times do
      s = r[i].tick
      harm = [3,4,5,6,7,8].choose
      play (hz_to_midi (98 * harm)), attack: 0.5, sustain: s-0.5, amp: 0.5
      play (hz_to_midi (73.4 * (harm + [1,0,-1].choose))), attack: 0.5, sustain: s-0.5, amp: 0.5
      sleep s
    end
    sleep 2
    i = i + 1
  end
  
end
