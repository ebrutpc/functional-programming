import Data.Char

tcnoDogrula :: String  -> Bool
tcnoDogrula s = length (s) == 11
  && (all isDigit s)
  && not (head s == '0')
  && even (digitToInt (last s)) ---digitToInt sadece karakter üzerinde calısır
  && (onuncuHane s) == digitToInt ( s !! 9)
  && (sum (map (digitToInt) (init s))) `mod` 10 == digitToInt ( s !! 10)


onuncuHane :: String -> Int ---tek index listesi olusturma ama bizim listemiz 0 dan baslar
onuncuHane s = aratoplam `mod` 10
    where
      intNo = map (digitToInt) s
      tektoplam =  sum ( map (intNo !!) [0,2..8])
      cifttoplam = sum ( map (intNo !!) [1,3..7])
      aratoplam = (tektoplam) * 7 - cifttoplam
