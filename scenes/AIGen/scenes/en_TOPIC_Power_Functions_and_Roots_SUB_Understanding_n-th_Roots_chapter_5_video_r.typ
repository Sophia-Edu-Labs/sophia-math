#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap how to solve equations involving n-th roots.")
]
#text(size: 30pt, weight: "bold")[Solving Equations with n-th Roots]
// The title "Solving Equations with n-th Roots" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("The key step is to raise both sides of the equation to the power of n.")
]
#only("2-")[
- Raise both sides to the power of n 📈
]
// The bullet point "Raise both sides to the power of n" is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("For example, if we have the equation 'the third root of x equals 2', we can solve it by cubing both sides.")
]
#only("3-")[
- Example: $root(3,x) = 2$
]
// The example equation is shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("This gives us 'x equals 2 cubed', which simplifies to 'x equals 8'.")
]
#only("4-")[
$ (root(3,x))^3 = 2^3$
]
#only("5-")[
$ x = 8$
]
// The solution steps are shown on slides 4 and 5
]

#slide()[
#only("1")[
#voiceover("Let's look at another example.")
]
#text(size: 30pt, weight: "bold")[Example]
// The title "Example" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Suppose we want to solve the equation 'the fourth root of x equals 3'.")
]
#only("2-")[
$root(4,x) = 3$
]
// The equation to solve is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("We raise both sides to the fourth power.")
]
#only("3-")[
$(root(4,x))^4 = 3^4$
]
// The first solution step is shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("This gives us 'x equals 3 to the fourth power', which is 81.")
]
#only("4-")[
$x = 81$
]
// The final solution is shown from slide 4 onward
]

#slide()[
#only("1")[
#voiceover("In summary, to solve equations with n-th roots:")
]
#text(size: 30pt, weight: "bold")[Recap]
// The title "Recap" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Identify the n-th root and the value it's equal to.")
]
#only("2-")[
1. Identify $root(n,x)$ and its value
]
// The first recap step is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("Raise both sides of the equation to the power of n.")
]
#only("3-")[
2. Raise both sides to the power of n
]
// The second recap step is shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("Simplify the resulting equation to find the value of x.")
]
#only("4-")[
3. Simplify to find $x$
]
// The third recap step is shown from slide 4 onward
#v(20pt)
#only("5")[
#voiceover("With practice, solving equations with n-th roots will become second nature! 🌟")
]
]