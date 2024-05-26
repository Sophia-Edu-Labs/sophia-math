#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sums]
#v(40pt)
What is the limit of a sum?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) The sum of the limits]#only("2-")[#text(fill:green)[a) The sum of the limits]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) The product of the limits]#only("3-")[#text(fill:red)[b) The product of the limits]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) The difference of the limits]#only("4-")[#text(fill:red)[c) The difference of the limits]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) The quotient of the limits]#only("5-")[#text(fill:red)[d) The quotient of the limits]]

#only("1")[#voiceover("Excellent work! You've chosen the correct answer.")]
#only("2")[#voiceover("The limit of a sum is indeed the sum of the limits. Let's see why this is the case.")]
#only("3")[#voiceover("The product of the limits is not the correct answer. Remember, we're dealing with a sum here, not a product.")]
#only("4")[#voiceover("The difference of the limits is also incorrect. We're not subtracting the limits.")]
#only("5")[#voiceover("And the quotient of the limits is not right either. We're not dividing the limits.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Proof]
#v(40pt)
Let's prove that the limit of a sum is the sum of the limits:
#v(20pt)
#only("1-")[Let $f(x)$ and $g(x)$ be two functions with limits $L$ and $M$ respectively as $x -> a$.]
#v(20pt)
#only("2-")[Then, $lim_(x->a) (f(x) + g(x))$]
#v(20pt)
#only("3-")[$= lim_(x->a) f(x) + lim_(x->a) g(x)$]
#v(20pt)
#only("4-")[$= L + M$]
#v(20pt)
#only("5-")[Thus, the limit of the sum is the sum of the limits. ✅]

#only("1")[#voiceover("To prove this, let's consider two functions f of x and g of x that have limits L and M respectively as x approaches a.")]
#only("2")[#voiceover("We want to find the limit of the sum of these functions as x approaches a.")]
#only("3")[#voiceover("By the properties of limits, this is equal to the limit of f of x as x approaches a, plus the limit of g of x as x approaches a.")]
#only("4")[#voiceover("And this is simply L plus M, the sum of the individual limits.")]
#only("5")[#voiceover("Therefore, we've proven that the limit of a sum is indeed the sum of the limits.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
Let's look at an example:
#v(20pt)
#only("1-")[Find $lim_(x->2) (x^2 + 3x)$.]
#v(20pt)
#only("2-")[$lim_(x->2) (x^2 + 3x)$]
#v(20pt)
#only("3-")[$= lim_(x->2) (x^2) + lim_(x->2) (3x)$]
#v(20pt)
#only("4-")[$= 2^2 + 3*2$]
#v(20pt)
#only("5-")[$= 4 + 6 = 10$]

#only("1")[#voiceover("Now, let's apply this to an example. We want to find the limit of x squared plus 3x as x approaches 2.")]
#only("2")[#voiceover("We start with the limit of the sum.")]
#only("3")[#voiceover("By our rule, this is equal to the limit of x squared as x approaches 2, plus the limit of 3x as x approaches 2.")]
#only("4")[#voiceover("Evaluating each limit, we get 2 squared, or 4, plus 3 times 2, which is 6.")]
#only("5")[#voiceover("Adding these together, we get a final answer of 10. And that's how you apply the rule that the limit of a sum is the sum of the limits.")]
]