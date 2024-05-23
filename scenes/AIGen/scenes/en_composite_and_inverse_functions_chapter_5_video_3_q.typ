#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's consider the functions f of x equals 2x plus 3 and g of x equals x minus 3 over 2.")
]
#text(size: 30pt, weight: "bold")[Verifying Inverse Functions]
// The title "Verifying Inverse Functions" is shown on all slides
#v(40pt)
#only("2-")[
- $f(x) = 2x + 3$
- $g(x) = (x - 3)/2$
]
// The functions f(x) and g(x) are shown from slide 2 onward
#v(40pt)
#only("3-")[Are $f(x)$ and $g(x)$ inverses of each other? 🤔]
// The question "Are f(x) and g(x) inverses of each other?" is shown from slide 3 onward
#only("2")[
#voiceover("To verify if they are inverses, we need to check if composing them in both orders results in x.")
]
#only("3")[
#voiceover("Can you determine if f of x and g of x are indeed inverses of each other?")
]
]#questionDef(
questionText: "Are the functions $f(x) = 2x + 3$ and $g(x) = \frac{x - 3}{2}$ inverses of each other?",
answerOptions: ("Yes, because $f(g(x)) = x$ and $g(f(x)) = x$.", "No, because $f(g(x)) \neq x$ or $g(f(x)) \neq x$."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)