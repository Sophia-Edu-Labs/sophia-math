#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Roots in Real Life 🌍]
#v(40pt)
#only("1-")[- Used in various applications]
#v(20pt)
#only("2-")[- Example: Calculating interest rates 💰]
#v(20pt)
#only("3-")[- Example: Physics problems ⚛]
#only("1")[
#voiceover("n-th roots are not just a mathematical concept. They are used in various real-world applications.")
]
#only("2")[
#voiceover("One example is in calculating interest rates. If you know the total amount after a certain period and the interest is compounded n times per year, you can use the n-th root to find the interest rate.")
]
#only("3")[
#voiceover("n-th roots also appear frequently in physics problems. For instance, in the inverse-square law, which describes how the intensity of a force changes with distance.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Interest Rates 💰]
#v(40pt)
#only("1-")[- Formula: $A = P(1 + r/n)^(nt)$]
#v(20pt)
#only("2-")[- $A$: final amount, $P$: initial principal, $r$: annual interest rate, $n$: number of times interest is compounded per year, $t$: number of years]
#v(20pt)
#only("3-")[- Example: $1000 = 500(1 + r/4)^(4 dot 2)$]
#v(20pt)
#only("4-")[- Solve for $r$: $r = 4(root(4 dot 2, 1000/500) - 1) = 0.1892$ or about 18.92%]
#only("1")[
#voiceover("Let's look at the interest rate example in more detail. The formula for compound interest is A equals P times the quantity 1 plus r over n, all raised to the power of n times t.")
]
#only("2")[
#voiceover("Here, A is the final amount, P is the initial principal, r is the annual interest rate, n is the number of times interest is compounded per year, and t is the number of years.")
]
#only("3")[
#voiceover("For example, if 500 dollars grows to 1000 dollars over 2 years with quarterly compounding, we can set up the equation like this.")
]
#only("4")[
#voiceover("To solve for r, we need to use the 4 times 2, or 8th root. This gives us an interest rate of approximately 18.92%.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Physics ⚛]
#v(40pt)
#only("1-")[- Inverse-square laws: $F = k/r^2$]
#v(20pt)
#only("2-")[- $F$: force, $k$: constant, $r$: distance]
#v(20pt)
#only("3-")[- Example: Gravitational force $F = G(m_1 m_2)/r^2$]
#v(20pt)
#only("4-")[- Solve for $r$: $r = sqrt(G(m_1 m_2)/F)$]
#only("1")[
#voiceover("In physics, inverse-square laws are common. They state that a force F is proportional to some constant k divided by the square of the distance r.")
]
#only("2")[
#voiceover("Here, F is the force, k is a constant that depends on the type of force, and r is the distance between the objects.")
]
#only("3")[
#voiceover("A famous example is Newton's law of universal gravitation. It says that the gravitational force between two objects is proportional to the product of their masses divided by the square of the distance between them.")
]
#only("4")[
#voiceover("If we know the force and the masses, we can solve for the distance using the square root.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- n-th roots are used in real life 🌍]
#v(20pt)
#only("2-")[- Calculating interest rates 💰]
#v(20pt)
#only("3-")[- Physics problems ⚛]
#v(20pt)
#only("4-")[- Understanding n-th roots is important! 🎓]
#only("1")[
#voiceover("In summary, n-th roots are not just an abstract concept. They have real-world applications.")
]
#only("2")[
#voiceover("We saw how they're used in calculating interest rates in finance.")
]
#only("3")[
#voiceover("And how they appear in physics problems, particularly those involving inverse-square laws.")
]
#only("4")[
#voiceover("So understanding n-th roots is not just important for your math exams, but for understanding the world around us!")
]
]