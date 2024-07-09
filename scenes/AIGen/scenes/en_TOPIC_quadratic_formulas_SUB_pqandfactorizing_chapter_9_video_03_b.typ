#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving Quadratic Equations]

#v(40pt)

#only("1-")[$ x^2 + 6x + 9 = 0 $]

#only("1")[
#voiceover("Not quite. Let's walk through the solution step by step to understand how to arrive at the correct answer.")
]

#only("2")[
#voiceover("We start with the quadratic equation x squared plus six x plus nine equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Identifying the Pattern]

#v(40pt)

#only("1-")[$ x^2 + 6x + 9 = 0 $]
#v(20pt)
#only("2-")[$ (x + 3)^2 = x^2 + 6x + 9 $]

#only("1")[
#voiceover("Our first step is to recognize the pattern in this equation. Notice that the left side of the equation is a perfect square trinomial.")
]

#only("2")[
#voiceover("In fact, it's the expanded form of x plus three, all squared. Remember, x plus three squared equals x squared plus six x plus nine.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Factoring the Equation]

#v(40pt)

#only("1-")[$ x^2 + 6x + 9 = 0 $]
#v(20pt)
#only("2-")[$ (x + 3)^2 = 0 $]

#only("1")[
#voiceover("Now that we've identified the pattern, we can rewrite our equation in factored form.")
]

#only("2")[
#voiceover("Our equation becomes x plus three, all squared, equals zero.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Solving the Equation]

#v(40pt)

#only("1-")[$ (x + 3)^2 = 0 $]
#v(20pt)
#only("2-")[$ x + 3 = 0 $]
#v(20pt)
#only("3-")[$ x = -3 $]

#only("1")[
#voiceover("To solve this equation, we need to remember a key principle: the square of a real number is only zero if that number itself is zero.")
]

#only("2")[
#voiceover("So, we can conclude that x plus three must equal zero.")
]

#only("3")[
#voiceover("Solving this simple linear equation, we get x equals negative three.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Answer]

#v(40pt)

#only("1-")[$ x = -3 $]
#v(20pt)
#only("2-")[Solution: $ (x + 3)^2 = 0, x = -3 $]

#only("1")[
#voiceover("Therefore, the solution to our original quadratic equation is x equals negative three.")
]

#only("2")[
#voiceover("We can express our complete solution as: x plus three squared equals zero, and x equals negative three.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Verification]

#v(40pt)

#only("1-")[$ x^2 + 6x + 9 = 0 $]
#v(20pt)
#only("2-")[$ (-3)^2 + 6(-3) + 9 = 0 $]
#v(20pt)
#only("3-")[$ 9 - 18 + 9 = 0 $]
#v(20pt)
#only("4-")[$ 0 = 0 $ ✅]

#only("1")[
#voiceover("Let's verify our solution by plugging it back into the original equation.")
]

#only("2")[
#voiceover("We substitute negative three for x in the equation x squared plus six x plus nine equals zero.")
]

#only("3")[
#voiceover("This gives us nine minus eighteen plus nine equals zero.")
]

#only("4")[
#voiceover("Which simplifies to zero equals zero. This confirms that our solution is correct!")
]
]