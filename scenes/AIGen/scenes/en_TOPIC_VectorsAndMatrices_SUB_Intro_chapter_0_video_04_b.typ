#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Vector Addition]
#v(40pt)

#only("1-")[$(5, 7, 2) + (2, -3, -1) = (7, 4, 1)$]

#v(20pt)

#only("2-")[- Add corresponding components:]
#v(10pt)
#only("3-")[  • $5 + 2 = 7$]
#v(10pt)
#only("4-")[  • $7 + (-3) = 4$]
#v(10pt)
#only("5-")[  • $2 + (-1) = 1$]

#v(20pt)

#only("6-")[Result: $(7, 4, 1)$ 🎉]

#only("1")[
#voiceover("Not quite. Let's review the correct solution step by step.")
]

#only("2")[
#voiceover("To add vectors, we add their corresponding components. Let's do this one by one:")
]

#only("3")[
#voiceover("First, we add the x-components: 5 plus 2 equals 7.")
]

#only("4")[
#voiceover("Next, we add the y-components: 7 plus negative 3 equals 4.")
]

#only("5")[
#voiceover("Finally, we add the z-components: 2 plus negative 1 equals 1.")
]

#only("6")[
#voiceover("Putting it all together, we get the resulting vector (7, 4, 1). This is indeed the correct sum of the two given vectors!")
]
]