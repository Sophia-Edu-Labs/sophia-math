#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Roots Recap 🌱]
#v(40pt)
#only("1-")[- Value that, when raised to power $n$, gives original number]
#v(20pt)
#only("2-")[- Example: $root(3, 8) = 2$ because $2^3 = 8$]
#v(20pt)
#only("3-")[- Notation: $root(n, a)$ for $n$-th root of $a$]
#only("1")[
#voiceover("Let's recap what we learned about n-th roots. An n-th root of a number is a value that, when raised to the power of n, gives the original number.")
]
#only("2")[
#voiceover("For example, the cube root of 8, denoted as the 3rd root of 8, is 2. Because when you cube 2, that is, raise it to the power of 3, you get back 8.")
]
#only("3")[
#voiceover("We write the n-th root using the notation 'root' followed by the root index n and the number a in parentheses.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties & Applications 🧮]
#v(40pt)
#only("1-")[- Product property: $root(n, ab) = root(n, a) root(n, b)$]
#v(20pt)
#only("2-")[- Quotient property: $root(n, a/b) = root(n, a) / root(n, b)$]
#v(20pt)
#only("3-")[- Applications in interest rates, physics, etc.]
#only("1")[
#voiceover("We also learned about some properties of n-th roots. The n-th root of a product is the product of the n-th roots.")
]
#only("2")[
#voiceover("Similarly, the n-th root of a quotient is the quotient of the n-th roots.")
]
#only("3")[
#voiceover("N-th roots have various applications, such as in calculating interest rates and solving physics problems.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying & Solving ✏]
#v(40pt)
#only("1-")[- Simplify by factoring inside the root]
#v(20pt)
#only("2-")[- Solve equations by raising both sides to power $n$]
#v(20pt)
#only("3-")[- Example: Solve $root(3, x) = 2$ ⇒ $x = 2^3 = 8$]
#only("1")[
#voiceover("To simplify n-th roots, we can factor the number inside the root.")
]
#only("2")[
#voiceover("When solving equations with n-th roots, we raise both sides of the equation to the power of n.")
]
#only("3")[
#voiceover("For instance, to solve the equation 'the cube root of x equals 2', we cube both sides. This gives us 'x equals 2 cubed', which is 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Negative Numbers & Complex Roots 🧐]
#v(40pt)
#only("1-")[- $n$-th root of negative number is real if $n$ is odd]
#v(20pt)
#only("2-")[- Example: $root(3, -8) = -2$]
#v(20pt)
#only("3-")[- If $n$ is even, $n$-th root of negative is complex]
#v(20pt)
#only("4-")[- Example: $root(4, -16) = 2i$]
#only("1")[
#voiceover("When dealing with negative numbers, the n-th root is real if n is odd.")
]
#only("2")[
#voiceover("For example, the cube root of negative 8 is negative 2.")
]
#only("3")[
#voiceover("However, if n is even, the n-th root of a negative number is complex.")
]
#only("4")[
#voiceover("For instance, the 4th root of negative 16 is 2i, where i is the imaginary unit.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- $n$-th root: value that, raised to power $n$, gives original number]
#v(20pt)
#only("2-")[- Simplify by factoring, solve by raising to power $n$]
#v(20pt)
#only("3-")[- $n$-th root of negative is real if $n$ odd, complex if $n$ even]
#v(20pt)
#only("4-")[- Applications in various fields 🌍]
#only("1")[
#voiceover("To sum up, an n-th root is a value that, when raised to the power of n, gives back the original number.")
]
#only("2")[
#voiceover("We can simplify n-th roots by factoring and solve equations involving n-th roots by raising both sides to the power of n.")
]
#only("3")[
#voiceover("The n-th root of a negative number is real if n is odd and complex if n is even.")
]
#only("4")[
#voiceover("N-th roots have applications in various fields, making them an important concept to understand.")
]
]