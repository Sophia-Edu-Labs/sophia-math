#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[n-th Roots of Negative Numbers]
#v(40pt)
#only("1-")[- Depends on the value of $n$]
#v(20pt)
#only("2-")[- If $n$ is odd 🔁, the root is real]
#v(20pt)
#only("3-")[- If $n$ is even ↔, the root is not real]
#only("1")[
#voiceover("The n-th root of a negative number can be real or not real, depending on the value of n.")
]
#only("2")[
#voiceover("If n is an odd number, like 1, 3, 5, and so on, then the n-th root of a negative number is real.")
]
#only("3")[
#voiceover("However, if n is an even number, like 2, 4, 6, and so on, then the n-th root of a negative number is not real.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Odd n]
#v(40pt)
#only("1-")[Consider $root(3, -8)$]
#v(20pt)
#only("2-")[$ root(3, -8) = -2 $, because $(-2)^3 = -8$]
#v(20pt)
#only("3-")[So, $root(3, -8)$ is real 📏]
#only("1")[
#voiceover("Let's look at an example. Consider the cube root of negative 8, which is written as $root(3, -8)$.")
]
#only("2")[
#voiceover("The cube root of negative 8 is equal to negative 2, because negative 2 cubed equals negative 8.")
]
#only("3")[
#voiceover("So, the cube root of negative 8, where the index 3 is odd, is a real number.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Even n]
#v(40pt)
#only("1-")[Consider $root(2, -9)$]
#v(20pt)
#only("2-")[No real number $x$ satisfies $x^2 = -9$]
#v(20pt)
#only("3-")[So, $root(2, -9)$ is not real 🛇]
#only("1")[
#voiceover("Now, let's consider the square root of negative 9, written as $root(2, -9)$.")
]
#only("2")[
#voiceover("There is no real number that, when squared, equals negative 9.")
]
#only("3")[
#voiceover("Therefore, the square root of negative 9, where the index 2 is even, is not a real number.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- n-th root of a negative number:]
#v(20pt)
#only("2-")[  - Real if $n$ is odd 🔁]
#v(20pt)
#only("3-")[  - Not real if $n$ is even ↔]
#only("1")[
#voiceover("In summary, the n-th root of a negative number behaves differently based on whether n is odd or even.")
]
#only("2")[
#voiceover("If n is odd, the n-th root of a negative number is real.")
]
#only("3")[
#voiceover("But if n is even, the n-th root of a negative number is not real.")
]
]