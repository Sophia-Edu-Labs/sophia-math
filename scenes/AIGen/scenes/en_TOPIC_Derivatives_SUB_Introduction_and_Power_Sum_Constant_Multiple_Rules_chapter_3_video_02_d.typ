#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Derivative of $5x^2$]
#v(40pt)

Which of the following is the derivative of $5x^2$?

#v(20pt)
#only("-1")[a) $10x$]#only("2-")[#text(fill:green)[a) $10x$]]
#v(10pt)
#only("-2")[b) $5x$]#only("3-")[#text(fill:red)[b) $5x$]]
#v(10pt)
#only("-3")[c) $5x^2$]#only("4-")[#text(fill:red)[c) $5x^2$]]
#v(10pt)
#only("-4")[d) $10$]#only("5-")[#text(fill:red)[d) $10$]]

#only("1")[#voiceover("Not quite. Let's review the correct solution and understand why a) 10x is the right answer and why the others are not.")]

#only("2")[#voiceover("a) 10x is indeed the correct derivative of 5x squared. We'll explain why in a moment.")]

#only("3")[#voiceover("b) 5x is incorrect. This answer doesn't account for the power rule of differentiation.")]

#only("4")[#voiceover("c) 5x squared is incorrect. This is actually the original function, not its derivative.")]

#only("5")[#voiceover("d) 10 is incorrect. The derivative of 5x squared is not a constant.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Constant Multiple Rule]
#v(20pt)

#only("1-")[The Constant Multiple Rule states:]
#v(10pt)
#only("2-")[$ dif/"dx" (c f(x)) = c dif/"dx" (f(x)) $]
#v(10pt)
#only("3-")[where $c$ is a constant and $f(x)$ is a function.]

#only("1")[#voiceover("To understand why 10x is the correct answer, let's first recall the Constant Multiple Rule for derivatives.")]

#only("2")[#voiceover("The Constant Multiple Rule states that the derivative of a constant times a function is equal to the constant times the derivative of the function.")]

#only("3")[#voiceover("In this rule, c represents a constant, and f of x represents a function.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Applying the Rule]
#v(20pt)

#only("1-")[For $5x^2$:]
#v(10pt)
#only("2-")[1. Identify: $c = 5$, $f(x) = x^2$]
#v(10pt)
#only("3-")[2. Find $dif/"dx" (x^2)$:]
#v(10pt)
#only("4-")[   $dif/"dx" (x^2) = 2x$]
#v(10pt)
#only("5-")[3. Apply the rule:]
#v(10pt)
#only("6-")[   $dif/"dx" (5x^2) = 5 dot dif/"dx" (x^2) = 5 dot 2x = 10x$]

#only("1")[#voiceover("Now, let's apply this rule to our problem of finding the derivative of 5x squared.")]

#only("2")[#voiceover("First, we identify that 5 is our constant c, and x squared is our function f of x.")]

#only("3")[#voiceover("Next, we need to find the derivative of x squared.")]

#only("4")[#voiceover("Using the power rule, we know that the derivative of x squared is 2x.")]

#only("5")[#voiceover("Now we can apply the Constant Multiple Rule.")]

#only("6")[#voiceover("The derivative of 5x squared equals 5 times the derivative of x squared. That's 5 times 2x, which gives us 10x.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(20pt)

#only("1-")[Therefore, $dif/"dx" (5x^2) = 10x$ ✅]
#v(20pt)
#only("2-")[Why other options are incorrect:]
#v(10pt)
#only("3-")[- $5x$: Forgot to multiply by power ❌]
#v(10pt)
#only("4-")[- $5x^2$: No differentiation applied ❌]
#v(10pt)
#only("5-")[- $10$: Result is not constant ❌]

#only("1")[#voiceover("So we can conclude that the derivative of 5x squared is indeed 10x.")]

#only("2")[#voiceover("Let's quickly recap why the other options were incorrect.")]

#only("3")[#voiceover("5x is incorrect because it only accounts for the constant 5, but forgets to multiply by the power of x, which is 2.")]

#only("4")[#voiceover("5x squared is simply the original function. No differentiation has been applied here.")]

#only("5")[#voiceover("And 10 is incorrect because the derivative of a quadratic function like 5x squared is a linear function, not a constant.")]
]