#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Notation for n-th Roots 📝]

#v(40pt)

#only("1-")[- $root(n, a)$]

#only("1")[
#voiceover("Let's recap the notation for n-th roots. We write the n-th root of a number a as 'root' of n and a, where n is the root and a is the number.")
]

#v(40pt)

#only("2-")[- Example: $root(3, 8) = 2$]

#only("2")[
#voiceover("For example, the cube root of 8, written as 'root' of 3 and 8, equals 2. Because 2 cubed, or 2 to the power of 3, equals 8.")
]

#v(40pt)

#only("3-")[- $n$: root 🌱, $a$: number 🔢]

#only("3")[
#voiceover("Remember, in the notation 'root' of n and a, n represents the root and a represents the number.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Quick Quiz 🤔]

#v(40pt)

#only("1-")[What is $root(5, 32)$?]
// The quiz question is shown from slide 1 onward

#only("1")[
#voiceover("Now, let's test your understanding with a quick quiz. What is the 5th root of 32?")
]

#v(40pt)

#only("2-")[Answer: $2$]
// The answer is revealed from slide 2 onward

#only("2")[
#voiceover("The answer is 2. Because 2 to the power of 5 equals 32.")
]

#v(40pt)

#only("3-")[$ 2^5 = 2 dot 2 dot 2 dot 2 dot 2 = 32$]
// The computation is shown from slide 3 onward

#only("3")[
#voiceover("That's right, 2 multiplied by itself 5 times equals 32.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]

#v(40pt)

#only("1-")[- n-th root notation: $root(n, a)$ 📝]

#only("1")[
#voiceover("In summary, the key takeaway is that we write the n-th root of a number a as 'root' of n and a.")
]

#v(40pt)

#only("2-")[- $n$: root 🌱, $a$: number 🔢]

#only("2")[
#voiceover("Where n represents the root and a represents the number.")
]

#v(40pt)

#only("3-")[- Example: $root(3, 8) = 2$ ✅]

#only("3")[
#voiceover("For example, the cube root of 8 equals 2, because 2 cubed equals 8.")
]
]