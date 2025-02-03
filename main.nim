# импортируйте нужные библиотеки (советуем strutils и sequtils)
import strutils, sequtils
proc main() =
  # Реализуйте ваш код здесь
  const nMax = 100000
  type ArrInt = array[0..(nMax-1), int]
  var flag : bool
  flag = false
  echo "Введите n:"
  var n = parseInt(stdin.readline)
  var nMean : ArrInt
  echo "Введите очки на фишках:"
  for i in countup(0, n-1):
    nMean[i] = parseInt(stdin.readline)
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