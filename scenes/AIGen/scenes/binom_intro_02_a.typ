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
#only("1")[#text()[$ 6! =  ? $]]
#only("2")[#text()[$ 6! = 6 dot 5 dot 4 dot 3 dot 2 dot 1 $]]
#only("3-")[#text()[$ 6! = 6 dot 5 dot 4 dot 3 dot 2 dot 1 =  720$]]
#only("1")[
  #voiceover("Das ist richtig, super gemacht. 6 Fakultät ist ja")
]
#only("2")[
  #voiceover("gleich 6 mal 5 mal 4 mal 3 mal 2 mal 1. ... Und das ganze ergibt")
]
#only("3-")[
  #voiceover("720: 6 mal 5 ist 30, ... mal 4 ist 120, ... mal 3 ist 360, ... mal 2 ist 720 ... . Also ist 6 Fakultät gleich 720.")
]
]
