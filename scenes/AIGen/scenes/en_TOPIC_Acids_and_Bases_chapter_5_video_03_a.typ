#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pH Calculation]
#v(40pt)
#only("1-")[- Given: $[H+] = 1 dot 10^(-4) M$]
// The given hydrogen ion concentration is shown on all slides
#v(20pt)
#only("2-")[- Formula: $"pH" = -log[H+]$]
// The pH formula is shown from slide 2 onward
#v(20pt)
#only("3-")[- Calculation: $"pH" = -log(1 dot 10^(-4))$]
// The calculation step is shown from slide 3 onward
#v(20pt)
#only("4-")[- Result: $"pH" = 4$ 🎉]
// The final result is shown from slide 4 onward
#only("1")[
#voiceover("That's right, great job! Let's see how we can calculate the pH step by step. We are given a hydrogen ion concentration of 1 times 10 to the power of negative 4 molar.")
]
#only("2")[
#voiceover("To calculate the pH, we use the formula pH equals the negative logarithm of the hydrogen ion concentration.")
]
#only("3")[
#voiceover("Plugging in our given value, we get pH equals the negative logarithm of 1 times 10 to the power of negative 4.")
]
#only("4")[
#voiceover("Evaluating this, we find that the pH is equal to 4. Well done!")
]
]