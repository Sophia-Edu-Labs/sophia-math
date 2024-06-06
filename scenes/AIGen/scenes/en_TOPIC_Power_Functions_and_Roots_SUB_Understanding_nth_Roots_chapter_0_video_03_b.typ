#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[- You correctly answered that the 4th root of 16 is 2.]
#only("1")[
#voiceover("Not quite. Let's review the correct solution: the 4th root of 16 is 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Let's solve $root(4,16)$ step by step.]
#v(20pt)
#only("2-")[- We need to find a number that, when raised to the power of 4, equals 16.]
#v(20pt)
#only("3-")[- Let's call this number $x$. So we're looking for $x$ where $x^4=16$.]
#v(20pt)
#only("4-")[- By taking the fourth root of both sides, we get: $root(4,x^4)=root(4,16)$]
#v(20pt)
#only("5-")[- The fourth root and fourth power cancel out on the left side, giving: $x=root(4,16)$]
#v(20pt)
#only("6-")[- Now, what number raised to the 4th power gives 16? It's 2, because $2^4=16$.]
#v(20pt)
#only("7-")[- Therefore, $root(4,16)=2$. 🌟]
#only("1")[
#voiceover("Let's solve the fourth root of 16 step by step.")
]
#only("2")[
#voiceover("We need to find a number that, when raised to the power of 4, equals 16.")
]
#only("3")[
#voiceover("Let's call this number x. So we're looking for x where x to the power of 4 equals 16.")
]
#only("4")[
#voiceover("By taking the fourth root of both sides, we get: the fourth root of x to the power of 4 equals the fourth root of 16.")
]
#only("5")[
#voiceover("The fourth root and fourth power cancel out on the left side, giving: x equals the fourth root of 16.")
]
#only("6")[
#voiceover("Now, what number raised to the 4th power gives 16? It's 2, because 2 to the power of 4 equals 16.")
]
#only("7")[
#voiceover("Therefore, the fourth root of 16 equals 2.")
]
]