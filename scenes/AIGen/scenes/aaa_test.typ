#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[End Behavior of Quadratic Functions]

#v(40pt)

#only("1-")[#text()[$f(x) = x^2$]]

#v(20pt)

#only("2-")[
#text()[$f(x)$ as $x$ $arrow$ $-infinity$?]
]

#only("1")[
#voiceover("Let's consider the function f of x equals x squared.")
]

#only("2")[
#voiceover("What happens to f of x as x approaches negative infinity?")
]
]