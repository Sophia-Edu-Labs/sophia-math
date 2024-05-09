#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider $mat(a) = mat(1; 2; 3)$ and $mat(b) = mat(4; 5; 6)$.]
#v(20pt)
#only("2-")[$mat(a) dot mat(b) = 1 times 4 + 2 times 5 + 3 times 6$]
#v(10pt)
#only("3-")[$mat(a) dot mat(b) = 4 + 10 + 18$]
#v(10pt)
#only("4-")[$mat(a) dot mat(b) = 32$]

#only("1")[#voiceover("Let's look at an example. Consider two vectors a and b, each with three components.")]
#only("2")[#voiceover("To find the dot product, we multiply the corresponding components and then add those products together.")]
#only("3")[#voiceover("So we have 1 times 4, which is 4, 2 times 5, which is 10, and 3 times 6, which is 18.")]
#only("4")[#voiceover("Adding these together, we get 32. This single number, 32, is the result of the dot product of vectors a and b.")]
]