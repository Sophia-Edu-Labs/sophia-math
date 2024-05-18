#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Combinations]
#v(40pt)
Which of the following is #text(weight: "bold")[not] a linear combination of the vectors $vec(u) = (1, 0)$ and $vec(v) = (0, 1)$?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $(1, 1)$]#only("2-")[#text(fill:green)[a) $(1, 1)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $(2, -1)$]#only("3-")[#text(fill:green)[b) $(2, -1)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) $(0, 0)$]#only("4-")[#text(fill:green)[c) $(0, 0)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $(1, 2, 3)$]#only("5-")[#text(fill:red)[d) $(1, 2, 3)$]]
#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a), the vector (1, 1), can be written as 1 times (1, 0) plus 1 times (0, 1), so it is a linear combination of u and v.")]
#only("3")[#voiceover("Similarly, option b), the vector (2, -1), can be written as 2 times (1, 0) minus 1 times (0, 1), making it a linear combination as well.")]
#only("4")[#voiceover("Option c), the zero vector (0, 0), is always a linear combination, as it can be written as 0 times (1, 0) plus 0 times (0, 1).")]
#only("5")[#voiceover("However, option d), the vector (1, 2, 3), is not a linear combination of u and v. It has three components, while u and v are vectors in R2. There's no way to combine u and v to get a vector in R3.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[To check if a vector is a linear combination of $vec(u) = (1, 0)$ and $vec(v) = (0, 1)$:]
#v(20pt)
#only("2-")[1. Write the vector as $a vec(u) + b vec(v)$, where $a$ and $b$ are scalars.]
#v(10pt)
#only("3-")[2. If this is possible, the vector is a linear combination. If not, it isn't.]
#v(40pt)
#only("4-")[Let's check option d) $(1, 2, 3)$:]
#v(20pt)
#only("1")[#voiceover("Let's go through the solution step-by-step.")]
#only("2")[#voiceover("To check if a vector is a linear combination of u and v, we first try to write it as a times u plus b times v, where a and b are scalars.")]
#only("3")[#voiceover("If this is possible, the vector is a linear combination. If not, it isn't.")]
#only("4")[#voiceover("Let's check option d), the vector (1, 2, 3).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution (cont.)]
#v(40pt)
#only("1-")[$(1, 2, 3) = a(1, 0) + b(0, 1)$]
#v(10pt)
#only("2-")[$(1, 2, 3) = (a, 0) + (0, b)$]
#v(10pt)
#only("3-")[$(1, 2, 3) ≠ (a, b)$ for any $a, b ∈ ℝ$]
#v(10pt)
#only("4-")[Therefore, $(1, 2, 3)$ is #text(weight: "bold")[not] a linear combination of $vec(u)$ and $vec(v)$. 🙅‍]
#only("1")[#voiceover("We try to write it as a times (1, 0) plus b times (0, 1).")]
#only("2")[#voiceover("This gives us the vector (a, 0) plus (0, b), which equals (a, b).")]
#only("3")[#voiceover("However, (a, b) can never equal (1, 2, 3), no matter what values we choose for a and b. The vectors are in different dimensions.")]
#only("4")[#voiceover("Therefore, (1, 2, 3) is not a linear combination of u and v.")]
]