#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity Check]
#v(40pt)
To check if a function is continuous at a point, we need to compare the limit of the function as $x$ approaches the point to the function's \_\_\_\_\_.
#v(40pt)
#only("-1")[a) derivative]#only("2-")[#text(fill:red)[a) derivative]]
#v(10pt)
#only("-2")[b) integral]#only("3-")[#text(fill:red)[b) integral]]
#v(10pt)
#only("-3")[c) value at that point]#only("4-")[#text(fill:green)[c) value at that point]]
#v(10pt)
#only("-4")[d) second derivative]#only("5-")[#text(fill:red)[d) second derivative]]

#only("1")[#voiceover("Great job! You've selected the correct answer.")]
#only("2")[#voiceover("The derivative is not used to check continuity at a point.")]
#only("3")[#voiceover("The integral is also not used to check continuity at a point.")]
#only("4")[#voiceover("The correct answer is c) value at that point. To check continuity, we compare the limit as x approaches the point to the function's value at that point.")]
#only("5")[#voiceover("The second derivative is not used to check continuity either.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[To check if $f(x)$ is continuous at $x = a$:]
#v(20pt)
#only("2-")[1. Find $lim_(x -> a) f(x)$]
#v(10pt)
#only("3-")[2. Find $f(a)$]
#v(10pt)
#only("4-")[3. Compare $lim_(x -> a) f(x)$ and $f(a)$]
#v(10pt)
#only("5-")[- If $lim_(x -> a) f(x) = f(a)$, then $f(x)$ is continuous at $x = a$ ✅]
#v(10pt)
#only("6-")[- If $lim_(x -> a) f(x) != f(a)$, then $f(x)$ is not continuous at $x = a$ ❌]

#only("1")[#voiceover("Here's a step-by-step solution for checking continuity at a point.")]
#only("2")[#voiceover("First, find the limit of the function as x approaches the point.")]
#only("3")[#voiceover("Next, find the value of the function at that point.")]
#only("4")[#voiceover("Then, compare the limit and the function value.")]
#only("5")[#voiceover("If the limit equals the function value, then the function is continuous at that point.")]
#only("6")[#voiceover("If the limit does not equal the function value, then the function is not continuous at that point.")]
]