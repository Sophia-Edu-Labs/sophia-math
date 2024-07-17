#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("That's okay, let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Multiplying Fractions]

#v(40pt)

#only("2-")[#text()[$ (3/4) dot (4/5) dot (5/6) $]]
// The multiplication of fractions is shown from slide 2 onward

#only("2")[
#voiceover("We start with the fractions three-fourths, four-fifths, and five-sixths.")
]

]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]

#v(40pt)

#only("1-")[- Multiply the numerators]
// The step of multiplying the numerators is shown from slide 1 onward

#only("2-")[$ 3 dot 4 dot 5 $]
// The numerators are shown from slide 2 onward

#only("3-")[- Multiply the denominators]
// The step of multiplying the denominators is shown from slide 3 onward

#only("4-")[$ 4 dot 5 dot 6 $]
// The denominators are shown from slide 4 onward

#only("5-")[- Simplify the fraction]
// The step of simplifying the fraction is shown from slide 5 onward

#only("6-")[$ 60 / 120 $]
// The simplified fraction is shown from slide 6 onward

#only("7-")[- Final answer]
// The final answer step is shown from slide 7 onward

#only("8-")[$ 1 / 2 $]
// The final answer is shown from slide 8 onward

#only("1")[#voiceover("First, we multiply the numerators together: three times four times five.")]
#only("2")[#voiceover("This gives us sixty.")]
#only("3")[#voiceover("Next, we multiply the denominators together: four times five times six.")]
#only("4")[#voiceover("This gives us one hundred twenty.")]
#only("5")[#voiceover("Now, we simplify the fraction sixty over one hundred twenty.")]
#only("6")[#voiceover("We divide both the numerator and the denominator by their greatest common divisor, which is sixty.")]
#only("7")[#voiceover("This gives us the final answer: one-half.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]

#v(40pt)

#only("1-")[- Multiply the numerators and denominators separately]
// The conclusion step of multiplying numerators and denominators separately is shown from slide 1 onward

#only("2-")[- Simplify the resulting fraction]
// The conclusion step of simplifying the resulting fraction is shown from slide 2 onward

#only("1")[#voiceover("To multiply fractions, multiply the numerators together and the denominators together.")]
#only("2")[#voiceover("Then, simplify the resulting fraction to get the final answer.")]
]