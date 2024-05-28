#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("In this video, we'll recap the main difference between Slutsky Decomposition and Hicks Decomposition.")
]
#text(size: 30pt, weight: "bold")[Slutsky vs Hicks Decomposition]
// The title "Slutsky vs Hicks Decomposition" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Slutsky Decomposition and Hicks Decomposition are two methods used to analyze the effect of a price change on consumer behavior. While they have similarities, there's a key difference between them.")
]
#only("2-")[
- Both decompose the effect of a price change 📊
- Key difference: what's held constant 🔑
]
// The bullet points are shown from slide 2 onward
]

#slide()[
#only("1")[
#voiceover("Slutsky Decomposition holds real income constant when analyzing the effect of a price change.")
]
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]
// The title "Slutsky Decomposition" is shown on this slide
#v(40pt)
#only("2-")[
- Holds real income constant 💰
- Separates effect into substitution and income effects
]
// The bullet points are shown from slide 2 onward
#only("2")[
#voiceover("It separates the effect of the price change into substitution and income effects.")
]
]

#slide()[
#only("1")[
#voiceover("On the other hand, Hicks Decomposition holds utility constant.")
]
#text(size: 30pt, weight: "bold")[Hicks Decomposition]
// The title "Hicks Decomposition" is shown on this slide
#v(40pt)
#only("2-")[
- Holds utility constant 😊
- Separates effect into substitution and income effects
]
// The bullet points are shown from slide 2 onward
#only("2")[
#voiceover("Like Slutsky Decomposition, it also separates the effect into substitution and income effects.")
]
]

#slide()[
#only("1")[
#voiceover("So, to sum it up, the main difference is:")
]
#text(size: 30pt, weight: "bold")[Main Difference]
#v(40pt)
#only("2-")[
- Slutsky Decomposition: holds real income constant 💰
- Hicks Decomposition: holds utility constant 😊
]
#only("2")[
#voiceover("Slutsky Decomposition holds real income constant, while Hicks Decomposition holds utility constant.")
]
#only("3")[
#voiceover("This difference leads to slightly different interpretations of the substitution and income effects, but both methods provide valuable insights into consumer behavior.")
]
]