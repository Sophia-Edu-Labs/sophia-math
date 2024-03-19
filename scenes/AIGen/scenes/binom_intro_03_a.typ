#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]

#slide()[
  #only("1")[
    #voiceover("Toll, das stimmt!")
  ]

  #only("2")[
    #voiceover("5 Fakultät durch 3 Fakultät ist ja 5 mal 4 mal 3 mal 2 mal 1, geteilt durch 3 mal 2 mal 1...Und dann erkennen wir, ")
  ]

  #only("3")[
    #voiceover("dass die drei, die zwei und die eins sowohl im Zähler, als auch im Nenner vorkommen.")
  ]

  #only("4")[
    #voiceover("Also können wir die drei, die zwei und die eins sowohl aus dem Zähler, als auch aus dem Nenner kürzen.")
  ]

  #only("5")[
    #voiceover("Dann erhalten wir 5 mal 4, und das ist zwanzig. Also ist 5 Fakultät durch 3 Fakultät gleich zwanzig.")
  ]

  #text(size: 30pt, weight: "bold")[Fakultät!]

  #v(40pt)

  #only("1")[#text(size: 45pt)[$ 5!/3! = ? $]]

  #only("2")[#text()[$ 5!/3! = (5 dot 4 dot 3 dot 2 dot 1)/(3 dot 2 dot 1) $]]

  #only("3")[#text()[$ 5!/3! = (5 dot 4 dot #text(fill:red)[$3 dot 2 dot 1$])/(#text(fill:red)[$3 dot 2 dot 1$]) $]]

  #only("4")[#text()[$ 5!/3! = (5 dot 4 cancel(dot 3 dot 2 dot 1))/(cancel(3 dot 2 dot 1)) $]]

  #only("5")[#text()[$ 5!/3! = 5 dot 4 = 20$]]
]