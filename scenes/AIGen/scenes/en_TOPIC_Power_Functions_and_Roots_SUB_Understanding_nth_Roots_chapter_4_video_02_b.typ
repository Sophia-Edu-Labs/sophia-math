#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationalizing $1/root(3, 2)$]
#v(40pt)
#only("-1")[a) $root(3, 2)/2$]#only("2-")[#text(fill:red)[a) $root(3, 2)/2$]]
#v(10pt)
#only("-2")[b) $root(3, 4)/2$]#only("3-")[#text(fill:green)[b) $root(3, 4)/2$]]
#v(10pt)
#only("-3")[c) $root(3, 8)/4$]#only("4-")[#text(fill:red)[c) $root(3, 8)/4$]]
#v(10pt)
#only("-4")[d) $root(3, 4)/4$]#only("5-")[#text(fill:red)[d) $root(3, 4)/4$]]

#only("1")[#voiceover("Excellent work! You've correctly identified the rationalized form of $1/root(3, 2)$.")]
#only("2")[#voiceover("Option a) $root(3, 2)/2$ is not the rationalized form. We need to multiply by a factor that eliminates the cube root in the denominator.")]
#only("3")[#voiceover("Option b) $root(3, 4)/2$ is indeed the correct rationalized form. Let's see how we arrive at this answer.")]
#only("4")[#voiceover("Option c) $root(3, 8)/4$ is incorrect. While the denominator is rationalized, the numerator and denominator are not equivalent to the original expression.")]
#only("5")[#voiceover("Option d) $root(3, 4)/4$ is also incorrect for the same reason as option c).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[- Start with $1/root(3, 2)$]
#v(20pt)
#only("2-")[- Multiply numerator and denominator by $root(3, 2^2)$]
#v(20pt)
#only("3-")[$ = (1 root(3, 2^2))/(root(3, 2) root(3, 2^2))$]
#v(20pt)
#only("4-")[$ = root(3, 4)/2$]
#v(20pt)
#only("5-")[Therefore, the rationalized form is $root(3, 4)/2$ 🎉]

#only("1")[#voiceover("We start with the expression $1/root(3, 2)$.")]
#only("2")[#voiceover("To rationalize the denominator, we multiply both the numerator and denominator by $root(3, 2^2)$, which is $root(3, 4)$. This is a clever trick because $root(3, 2) root(3, 4) = 2$.")]
#only("3")[#voiceover("After multiplying, we get $1 root(3, 4)$ in the numerator and $root(3, 2) root(3, 4)$ in the denominator.")]
#only("4")[#voiceover("Simplifying, the denominator becomes 2, and we're left with $root(3, 4)/2$.")]
#only("5")[#voiceover("And there we have it! The rationalized form of $1/root(3, 2)$ is $root(3, 4)/2$. Great job working through this problem!")]
]