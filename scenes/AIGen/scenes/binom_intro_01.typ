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
  #voiceover("Was ist eine Fakultät in Mathe? ...")
]
#text(size: 30pt, weight: "bold")[Fakultät!]
#v(40pt)
#only("2-")[#align(center, $ n! = n dot (n-1) dot ... dot 2 dot 1 $)]
#only("2")[
  #voiceover("Die Fakultät einer Zahl n ist das Produkt aller natürlichen Zahlen kleiner oder gleich n.")
]
#only("3-")[#align(center)[$ 4! = 4 dot 3 dot 2 dot 1 #only("4-")[=24]$]]
#only("3")[
  #voiceover("Also ist zum Beispiel die Fakultät der Zahl 4 gleich 4 mal 3 mal 2 mal 1,")
]
#only("4")[
  #voiceover("also gleich 24. Hier sind noch drei fun facts über die Fakultät.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Fakultät!]

#v(60pt)
    #only("1-")[- Nur für natürliche Zahlen definiert]
    #v(20pt)
    #only("2-")[- $0! = 1$]
    #v(20pt)
    #only("3-")[- $7! = 5040$]
#only("1")[
  #voiceover("Fun fact Nummer eins: Die Fakultät ist nur für natürliche Zahlen definiert.")
]
#only("2")[
  #voiceover("Fun fact Nummer zwei: Die Fakultät von 0 ist 1. ... Das muss man sich einfach merken.")
]
#only("3")[
  #voiceover("Und zum Abschied: fact Nummer drei: Die Fakultät von 7 ist 5040. schon krass, wie schnell das wächst, oder?!")
]
]