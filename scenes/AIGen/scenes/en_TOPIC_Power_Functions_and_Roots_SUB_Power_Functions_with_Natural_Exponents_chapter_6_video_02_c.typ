#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Integral of $f(x) = x^2$]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $(x^3)/3 + C$]#only("2-")[#text(fill:green)[a) $(x^3)/3 + C$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $(x^2)/2 + C$]#only("3-")[#text(fill:red)[b) $(x^2)/2 + C$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $(x^3)/2 + C$]#only("4-")[#text(fill:red)[c) $(x^3)/2 + C$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $(x^2)/3 + C$]#only("5-")[#text(fill:red)[d) $(x^2)/3 + C$]]
#v(40pt)

#only("1")[#voiceover("That's not quite right. Let's look at the correct solution...")]
#only("2")[#voiceover("a) $(x^3)/3 + C$. Let's see why in the next slide.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Given: $f(x) = x^2$]
#v(20pt)
#only("2-")[- Recall: $integral x^n dif x = (x^(n+1))/(n+1) + C$ for $n != -1$]
#v(20pt)
#only("3-")[- Here, $n = 2$]
#v(20pt)
#only("4-")[- So, $integral x^2 dif x = (x^(2+1))/(2+1) + C$]
#v(20pt)
#only("5-")[- Simplifying: $integral x^2 dif x = (x^3)/3 + C$ 🎉]

#only("1")[#voiceover("We are given the function f of x equals x squared.")]
#only("2")[#voiceover("To solve this, let's recall the power rule for integrals: the integral of x to the power of n with respect to x equals x to the power of n plus 1, divided by n plus 1, plus a constant C. This holds for all n not equal to negative 1.")]
#only("3")[#voiceover("In our case, n equals 2.")]
#only("4")[#voiceover("So, applying the power rule, the integral of x squared with respect to x equals x to the power of 2 plus 1, which is 3, divided by 2 plus 1, which is 3, plus C.")]
#only("5")[#voiceover("Simplifying, we get x cubed divided by 3, plus C. And that's our answer!")]
]