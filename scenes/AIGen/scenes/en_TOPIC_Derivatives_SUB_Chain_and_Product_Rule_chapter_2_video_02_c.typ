#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Differentiating $f(x) = x^2 (3x^2 + 2x + 1)^5$]
#v(40pt)

Which rules do we need to use?

#v(20pt)
#only("-1")[a) Chain rule only]#only("2-")[#text(fill:red)[a) Chain rule only]]
#v(10pt)
#only("-2")[b) Product rule only]#only("3-")[#text(fill:red)[b) Product rule only]]
#v(10pt)
#only("-3")[c) Both chain rule and product rule]#only("4-")[#text(fill:green)[c) Both chain rule and product rule]]
#v(10pt)
#only("-4")[d) Neither]#only("5-")[#text(fill:red)[d) Neither]]

#only("1")[#voiceover("Great job! You've answered correctly. Let's break down why we need both the chain rule and the product rule to differentiate this function.")]

#only("2")[#voiceover("Option a, chain rule only, is incorrect. While we do need the chain rule, it's not sufficient on its own.")]

#only("3")[#voiceover("Option b, product rule only, is also incorrect. The product rule is necessary, but we need more than just that.")]

#only("4")[#voiceover("Option c is correct. We need both the chain rule and the product rule. Let's see why in the next slide.")]

#only("5")[#voiceover("Option d, neither, is incorrect. We definitely need rules to differentiate this complex function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Why Both Rules?]
#v(40pt)

#only("1-")[$ f(x) = x^2 (3x^2 + 2x + 1)^5 $]
#v(20pt)
#only("2-")[1️⃣ Product Rule: $ f(x) = u dot v $]
#v(10pt)
#only("3-")[   Where $ u = x^2 $ and $ v = (3x^2 + 2x + 1)^5 $]
#v(20pt)
#only("4-")[2️⃣ Chain Rule: For $ v = (3x^2 + 2x + 1)^5 $]

#only("1")[#voiceover("Let's look at our function f of x equals x squared times the quantity 3 x squared plus 2 x plus 1, all to the fifth power.")]

#only("2")[#voiceover("We need the product rule because our function is a product of two parts.")]

#only("3")[#voiceover("We can call the first part u, which is x squared, and the second part v, which is the quantity 3 x squared plus 2 x plus 1, all to the fifth power.")]

#only("4")[#voiceover("For the second part, v, we need the chain rule because it's a composite function - we have the fifth power of another function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Applying the Rules]
#v(40pt)

#only("1-")[Product Rule: $ f'(x) = u' dot v + u dot v' $]
#v(20pt)
#only("2-")[$ = (2x)(3x^2 + 2x + 1)^5 + x^2 dot v' $]
#v(20pt)
#only("3-")[Chain Rule for $v'$:]
#v(10pt)
#only("4-")[$ v' = 5(3x^2 + 2x + 1)^4 dot (6x + 2) $]

#only("1")[#voiceover("Now, let's apply these rules. The product rule states that the derivative of f equals u prime times v plus u times v prime.")]

#only("2")[#voiceover("The derivative of u, which is x squared, is 2x. So we have 2x times our v, plus x squared times v prime.")]

#only("3")[#voiceover("Now we need to find v prime, and this is where we use the chain rule.")]

#only("4")[#voiceover("By the chain rule, v prime equals 5 times the quantity 3 x squared plus 2 x plus 1 to the fourth power, times the derivative of the inner function, which is 6 x plus 2.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Result]
#v(40pt)

#only("1-")[Putting it all together:]
#v(20pt)
#only("2-")[$ f'(x) = 2x(3x^2 + 2x + 1)^5 + $]
#only("3-")[$ x^2 dot 5(3x^2 + 2x + 1)^4 dot (6x + 2) $]
#v(40pt)
#only("4-")[🎉 Both rules were necessary!]

#only("1")[#voiceover("Now, let's put everything together to get our final result.")]

#only("2")[#voiceover("The derivative of f equals 2x times the quantity 3 x squared plus 2 x plus 1 to the fifth power,")]

#only("3")[#voiceover("plus x squared times 5 times the quantity 3 x squared plus 2 x plus 1 to the fourth power times the quantity 6 x plus 2.")]

#only("4")[#voiceover("As we can see, both the product rule and the chain rule were necessary to differentiate this function. The product rule helped us handle the multiplication of two complex parts, while the chain rule was crucial for differentiating the power function. Great job on recognizing the need for both rules!")]
]