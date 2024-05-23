#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step together.")
]

#text(size: 30pt, weight: "bold")[Verifying Inverse Functions]

#v(40pt)

#only("2-")[#text()[$ f(x) = 2x + 3 $]]
#only("3-")[#text()[$ g(x) = (x - 3) / 2 $]]
// The functions f(x) and g(x) are shown from slide 2 and 3 onward respectively

#only("2")[
#voiceover("We're considering the functions f of x equals two times x plus three")
]
#only("3")[
#voiceover("and g of x equals x minus three divided by two.")
]

]

#slide()[

#only("1")[
#voiceover("To verify if these functions are inverses of each other, we need to check two conditions:")
]

#text(size: 30pt, weight: "bold")[Conditions for Inverse Functions]

#v(40pt)

#only("1-")[1. $ f(g(x)) = x $]
#only("2-")[2. $ g(f(x)) = x $]
// The two conditions for inverse functions are shown from slide 1 and 2 onward respectively

#only("1")[
#voiceover("First, the composition of f and g, that is, f of g of x, should equal x.")
]
#only("2")[
#voiceover("Second, the composition of g and f, that is, g of f of x, should also equal x.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Verifying Condition 1]

#v(40pt)

#only("1-")[$ f(g(x)) = f((x - 3) / 2) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Substitute g(x) into f(x)]]]

#v(10pt)

#only("3-")[$ f(g(x)) = 2((x - 3) / 2) + 3 $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]]

#v(10pt)

#only("5-")[$ f(g(x)) = x - 3 + 3 $]
#only("6-")[$ f(g(x)) = x $]

#only("1")[#voiceover("To verify the first condition, we start by substituting g of x into f of x.")]

#only("2")[#voiceover("This gives us f of g of x equals f of x minus three divided by two.")]

#only("3")[#voiceover("Applying the function f, we get two times the quantity x minus three divided by two, plus three.")]

#only("4")[#voiceover("Now, let's simplify this expression.")]

#only("5")[#voiceover("Multiplying out, we get x minus three, and then adding three gives us simply x.")]

#only("6")[#voiceover("So, f of g of x equals x, satisfying the first condition.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Verifying Condition 2]

#v(40pt)

#only("1-")[$ g(f(x)) = g(2x + 3) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Substitute f(x) into g(x)]]]

#v(10pt)

#only("3-")[$ g(f(x)) = (2x + 3 - 3) / 2 $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]]

#v(10pt)

#only("5-")[$ g(f(x)) = 2x / 2 $]
#only("6-")[$ g(f(x)) = x $]

#only("1")[#voiceover("Similarly, for the second condition, we substitute f of x into g of x.")]

#only("2")[#voiceover("This gives us g of f of x equals two x plus three minus three, all divided by two.")]

#only("3")[#voiceover("Simplifying the numerator, the threes cancel out, leaving us with two x divided by two.")]

#only("4")[#voiceover("And two divided by two is just one, so we're left with x.")]

#only("5")[#voiceover("Thus, g of f of x equals x, satisfying the second condition.")]

#only("6")[#voiceover("Since both conditions are met, we can conclude that f and g are indeed inverse functions of each other.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Conclusion]

#v(40pt)

#only("1-")[$ f(g(x)) = x $]
#only("2-")[$ g(f(x)) = x $]

#v(20pt)

#only("3-")[🎉 $ f(x) $ and $ g(x) $ are inverses! 🎉]

#only("1")[#voiceover("We verified that f of g of x equals x,")]

#only("2")[#voiceover("and g of f of x also equals x.")]

#only("3")[#voiceover("Therefore, we can confidently say that the functions f of x equals two x plus three and g of x equals x minus three divided by two are indeed inverse functions. Great work!")]

]