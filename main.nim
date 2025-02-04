# импортируйте нужные библиотеки (советуем strutils и sequtils)
import strutils, sequtils
proc main() =
  # Реализуйте ваш код здесь
  const nMax = 100000
  var flag : bool
  flag = false
  echo "Введите n:"
  var n = parseInt(stdin.readline)
  var nMean : seq[int]
  echo "Введите очки на фишках:"
  let s = stdin.readline
  nMean = map(s.split, proc(x : string): int=x.parseint)
  echo "Введите k: " 
  let k = parseInt(stdin.readline)
  for j in countup(0, n-1):
    for l in countup(0, n-1):
      if nMean[j]+nMean[l] == k :
        echo "Ответ: ", $nMean[j], " ", $nMean[l]
        flag = true
        break
    if flag :
      break 
  if flag != true :
    echo "None"  
main()
