#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Decomposing Functions]
#v(40pt)
If $h(x) = (2x + 3)^2$, what are possible functions $f(x)$ and $g(x)$ such that $h(x) = f(g(x))$?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[a) $f(x) = x^2$, $g(x) = 2x + 3$]#only("2-")[#text(fill:green)[a) $f(x) = x^2$, $g(x) = 2x + 3$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $f(x) = 2x + 3$, $g(x) = x^2$]#only("3-")[#text(fill:red)[b) $f(x) = 2x + 3$, $g(x) = x^2$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $f(x) = x + 3$, $g(x) = 2x$]#only("4-")[#text(fill:red)[c) $f(x) = x + 3$, $g(x) = 2x$]]
#v(10pt)  
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $f(x) = 2(x + 3)$, $g(x) = x$]#only("5-")[#text(fill:red)[d) $f(x) = 2(x + 3)$, $g(x) = x$]]

#only("1")[
#voiceover("Great job! You've selected the correct answer.")
]
#only("2")[
#voiceover("Choice a) is indeed correct. If we let f of x equal x squared and g of x equal 2x plus 3, then f of g of x would equal the square of 2x plus 3, which matches the given function h of x.")
]
#only("3")[
#voiceover("Choice b) is incorrect because if we apply g to x first and then f, we would get 2 times x squared plus 3, not the square of 2x plus 3.")
]  
#only("4")[
#voiceover("Choice c) is also incorrect. If we apply g and then f, we would get x plus 3 plus 3, or 2x plus 6, which doesn't match h of x.")
]
#only("5")[
#voiceover("Finally, choice d) is incorrect because applying g and then f would give us 2 times x plus 3, not the square of 2x plus 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)  
#only("1-")[- Given: $h(x) = (2x + 3)^2$]
#only("2-")[- We need to find $f(x)$ and $g(x)$ such that $h(x) = f(g(x))$]
#v(20pt)
#only("3-")[- Look at the structure of $h(x)$:]
#v(10pt)
#only("4-")[  - It's a #text(weight: "bold")[square] of an #text(weight: "bold")[expression]]
#v(20pt)  
#only("5-")[- Let's choose:]
#v(10pt)
#only("6-")[  - $f(x) = x^2$ (the square)]  
#only("7-")[  - $g(x) = 2x + 3$ (the expression)]
#v(20pt)
#only("8-")[- Then: $f(g(x)) = (2x + 3)^2 = h(x)$ ✅]

#only("1")[
#voiceover("Let's solve this step-by-step. We are given that h of x equals the square of 2x plus 3.")
]
#only("2")[  
#voiceover("Our task is to find functions f and g such that h of x equals f of g of x.")
]
#only("3")[
#voiceover("Let's look closely at the structure of h of x.")
]
#only("4")[
#voiceover("We see that it's a square of some expression.")
]
#only("5")[
#voiceover("So let's choose our f and g based on this structure.")
]
#only("6")[
#voiceover("We can let f of x be x squared, representing the square operation.")
]
#only("7")[
#voiceover("And we can let g of x be 2x plus 3, the expression that's being squared.")
]
#only("8")[
#voiceover("Now, if we apply g and then f, we get the square of 2x plus 3, which is exactly h of x. Therefore, we've successfully decomposed h into f and g.")
]
]