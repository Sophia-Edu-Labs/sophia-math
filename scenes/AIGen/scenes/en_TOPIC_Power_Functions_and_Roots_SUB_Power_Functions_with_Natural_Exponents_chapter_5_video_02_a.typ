#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Rule]
#v(40pt)
#only("1-")[What is the derivative of $f(x) = x^3$?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $3 x^2$]#only("2-")[#text(fill:green)[a) $3 x^2$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $2 x^3$]#only("3-")[#text(fill:red)[b) $2 x^3$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $x^3$]#only("4-")[#text(fill:red)[c) $x^3$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $3 x^3$]#only("5-")[#text(fill:red)[d) $3 x^3$]]
#v(40pt)

#only("1")[#voiceover("Great job! You correctly identified the derivative of $f(x) = x^3$.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("a) $3 x^2$ is indeed the correct answer. Let's see why...")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("b) $2 x^3$ is incorrect. This would be the result if we multiplied the exponent by the coefficient, but that's not the power rule.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) $x^3$ is also incorrect. This is the original function, not its derivative.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) $3 x^3$ is incorrect as well. This would be the result if we multiplied the entire function by the exponent, but again, that's not the power rule.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Power Rule]
#v(40pt)
#only("1-")[For a function $f(x) = x^n$, its derivative is:]
#v(20pt)
#only("2-")[- $f'(x) = n x^(n-1)$]
#v(40pt)
#only("3-")[In this case, with $f(x) = x^3$:]
#v(20pt)
#only("4-")[- $n = 3$]
#v(20pt)
#only("5-")[So, $f'(x) = 3 x^(3-1) = 3 x^2$ ✅]

#only("1")[#voiceover("The power rule states that for a function $f(x) = x^n$, its derivative is...")]
#only("2")[#voiceover("$f'(x) = n x^(n-1)$, where $n$ is the exponent.")]
#only("3")[#voiceover("In our problem, we have $f(x) = x^3$. So...")]
#only("4")[#voiceover("$n = 3$.")]
#only("5")[#voiceover("Applying the power rule, we get $f'(x) = 3 x^(3-1) = 3 x^2$, which is the correct answer you chose. Great work!")]
]