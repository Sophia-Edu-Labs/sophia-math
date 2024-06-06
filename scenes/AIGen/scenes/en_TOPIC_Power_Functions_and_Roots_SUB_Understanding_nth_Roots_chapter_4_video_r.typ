#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's briefly recap how to rationalize n-th roots. 🌟")
]
#text(size: 30pt, weight: "bold")[Rationalizing n-th Roots]
// The title "Rationalizing n-th Roots" is shown on this slide
#v(40pt)
#only("2-")[
- Multiply numerator and denominator by appropriate value
]
// The bullet point is shown from slide 2 onward
#only("2")[
#voiceover("The key is to multiply both the numerator and denominator by an appropriate value.")
]
]

#slide()[
#only("1")[
#voiceover("Consider the expression 1 over the cube root of 2.")
]
#text(size: 30pt, weight: "bold")[Example]
// The title "Example" is shown on this slide
#v(40pt)
#only("1-")[
$ 1/root(3,2) $
]
// The expression 1/∛2 is shown from slide 1 onward
#only("2")[
#voiceover("To rationalize this, we multiply both the numerator and denominator by the cube root of 4.")
]
#only("2-")[
$ = 1/root(3,2) dot root(3,4)/root(3,4) $
]
// The rationalization step is shown from slide 2 onward
#only("3")[
#voiceover("This simplifies to the cube root of 4 over 2.")
]
#only("3-")[
$ = root(3,4)/2 $
]
// The simplified result is shown from slide 3 onward
]

#slide()[
#only("1")[
#voiceover("In general, to rationalize 1 over the n-th root of a, we multiply by the n-th root of a to the power of n minus 1.")
]
#text(size: 30pt, weight: "bold")[General Rule]
// The title "General Rule" is shown on this slide
#v(40pt)
#only("1-")[
$ 1/root(n,a) = 1/root(n,a) dot root(n,a^(n-1))/root(n,a^(n-1)) = root(n,a^(n-1))/a $
]
// The general rule is shown from slide 1 onward
]

#slide()[
#only("1")[
#voiceover("To summarize, rationalizing n-th roots involves multiplying by an appropriate value to eliminate the root in the denominator. 🎯")
]
#text(size: 30pt, weight: "bold")[Summary]
// The title "Summary" is shown on this slide
#v(40pt)
#only("1-")[
- Multiply numerator and denominator by $root(n,a^(n-1))$ 📐
- Simplify the result 🧮
]
// The summary bullet points are shown from slide 1 onward
]