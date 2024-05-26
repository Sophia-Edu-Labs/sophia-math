#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sums and Products]
#v(40pt)
#only("1-")[- Find $lim_(x -> 3) (x^2 + 2x)$]
// The problem statement is shown on all slides
#v(20pt)
#only("2-")[- Use sum rule: $lim_(x -> a) (f(x) + g(x)) = lim_(x -> a) f(x) + lim_(x -> a) g(x)$]
// The sum rule is shown from slide 2 onward
#v(20pt)
#only("3-")[- $lim_(x -> 3) (x^2) + lim_(x -> 3) (2x)$]
// The limit is split into two parts using the sum rule on slide 3
#v(20pt)
#only("4-")[- $= 3^2 + 2 3$]
// The limits are evaluated on slide 4
#v(20pt)
#only("5-")[- $= 9 + 6 = 15$ ✅]
// The final answer is shown on slide 5
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution step by step.")
]
#only("2")[
#voiceover("To find the limit of a sum, we can use the sum rule. It states that the limit of a sum is equal to the sum of the limits.")
]
#only("3")[
#voiceover("So, we can split our limit into two parts: the limit of x squared and the limit of 2x.")
]
#only("4")[
#voiceover("Now, we can evaluate each limit separately. The limit of x squared as x approaches 3 is 3 squared, which is 9. And the limit of 2x as x approaches 3 is 2 times 3, which is 6.")
]
#only("5")[
#voiceover("Finally, we add these two limits together. 9 plus 6 equals 15. And that's our final answer!")
]
]