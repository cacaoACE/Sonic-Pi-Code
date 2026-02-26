# pound sign means sharp
# m means minor
#F#m7 chord (F#m7 notes: F# - A - C# - E. )
#Bm chord (B minor) (Bm = B minor triad (B - D - F#))
#E major chord (start chord on E and It has four sharps: F♯, G♯, C♯, D♯.)
#C#m chord (C-sharp minor) (play the notes C# - E - G#)
use_bpm 120
use_synth :piano

drum_solo = "C:/Users/maximus_alvarado/Downloads/drumsolo.wav"

live_loop :piano1 do
  6.times do
    play chord :fs3, :minor7, release: 2, amp: 1.5
    sleep 2
    play  chord :b2, :minor, release: 2, amp: 1.5
    sleep 2
    play  chord :e3, :major, release: 2, amp: 1.5
    sleep 2
    play chord :cs3, :minor, release: 2, amp: 1.5
    sleep 2
  end
  stop
end

sleep 8

live_loop :melody1 do
  6.times do
    4.times do
      play :cs5; sleep 0.5
    end
    play :b4; sleep 0.5
    play :a4; sleep 0.5
    play :cs5; sleep 1
    sleep 4
  end
  stop
end

sleep 8

live_loop :layer3 do
  4.times do
    sleep 6
    sample :bd_boom
    sample :drum_bass_hard, amp: 0.8
  end
  stop
end
sleep 32
sample :sn_dub
sleep 2
sample drum_solo
