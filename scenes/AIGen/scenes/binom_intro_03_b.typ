#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
  

#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]
  #slide()[
#only("1")[
  #voiceover("Das ist leider falsch. ... super gemacht!!")
]
#only("2")[
  #voiceover("11 Fakultät durch 9 Fakultät ist ja 11 mal 10 mal 9 mal 8 und so weiter, geteilt durch 9 mal 8 mal 7 und so weiter...Und dann erkennen wir, ")
]
#only("3")[
  #voiceover(" dass die neun, die acht, die sieben und so weiter sowohl im Zähler, als auch im Nenner vorkommen.")
]
#only("4")[
  #voiceover("Also könenn wir die neun, die acht, die sieben und so weiter, sowohl aus dem Zähler, als auch aus dem Nenner kürzen.")
]
#only("5")[
  #voiceover("Dann erhalten wir 11 mal 10, und das ist hundtertzehn. Also ist 11 Fakultät durch 9 Fakultät gleich hundtertzehn.")
]

#text(size: 30pt, weight: "bold")[Fakultät!]
#v(40pt)
#only("1")[#text(size: 45pt)[$ 11!/9! = ? $]]
#only("2")[#text()[$ 11!/9! = (11 dot 10 dot 9 dot 8 dot 7 dot ... dot 2 dot 1)/(9 dot 8 dot 7 dot ... dot 2 dot 1) $]]
#only("3")[#text()[$ 11!/9! = (11 dot 10 dot #text(fill:red)[$9 dot 8 dot 7 dot ... dot 2 dot 1$])/(#text(fill:red)[$9 dot 8 dot 7 dot ... dot 2 dot 1$]) $]]
#only("4")[#text()[$ 11!/9! = (11 dot 10 cancel(dot 9 dot 8 dot 7 dot ... dot 2 dot 1))/(cancel(9 dot 8 dot 7 dot ... dot 2 dot 1)) $]]
#only("5")[#text()[$ 11!/9! = 11 dot 10 =110$]]
]
