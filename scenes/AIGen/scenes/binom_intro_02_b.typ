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
#text(size: 30pt, weight: "bold")[Fakultät!]
#v(40pt)
#only("1")[#text()[$ 5! =  ? $]]
#only("2")[#text()[$ 5! = 5 dot 4 dot 3 dot 2 dot 1 $]]
#only("3-")[#text()[$ 5! = 5 dot 4 dot 3 dot 2 dot 1 =  720$]]
#only("1")[
  #voiceover("Das ist leider falsch. 5 Fakultät ist ja")
]
#only("2")[
  #voiceover("gleich 5 mal 4 mal 3 mal 2 mal 1. ... Und das ganze ergibt")
]
#only("3-")[
  #voiceover("120: 5 mal vier ist 20, ... mal 3 ist 60, ... mal 2 ist 120, ... mal 1 ist 120. Also ist 5 Fakultät gleich 120.")
]
]
