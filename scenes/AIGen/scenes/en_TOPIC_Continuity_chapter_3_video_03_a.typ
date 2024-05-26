#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity Check]
#v(40pt)
#only("1-")[Is $f(x) = x^2$ continuous at $x = 2$?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) yes]#only("2-")[#text(fill:green)[a) yes]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) no]#only("3-")[#text(fill:red)[b) no]]
#v(40pt)
#only("1")[#voiceover("That's right, great job! Let's see why this is the correct answer.")]
#only("2")[#voiceover("The function f of x equals x squared is indeed continuous at x equals 2. Here's why:")]
#only("3")[#voiceover("The answer 'no' is incorrect. The function f of x equals x squared is continuous everywhere, including at x equals 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[For $f(x) = x^2$ to be continuous at $x = 2$:]
#v(20pt)
#only("2-")[1. $lim_(x->2) f(x)$ must exist]
#v(10pt)
#only("3-")[2. $lim_(x->2) f(x) = f(2)$]
#v(40pt)
#only("4-")[Let's check each condition:]
#v(20pt)
#only("5-")[1. $lim_(x->2) x^2 = 2^2 = 4$ ✅]
#v(10pt)
#only("6-")[2. $f(2) = 2^2 = 4$ ✅]
#v(40pt)
#only("7-")[Since both conditions are met, $f(x) = x^2$ is continuous at $x = 2$. 🎉]

#only("1")[#voiceover("For a function to be continuous at a point, two conditions must be met:")]
#only("2")[#voiceover("First, the limit of the function as x approaches the point must exist.")]
#only("3")[#voiceover("Second, this limit must be equal to the function's value at that point.")]
#only("4")[#voiceover("Let's check each condition for our function f of x equals x squared at x equals 2.")]
#only("5")[#voiceover("First, the limit of x squared as x approaches 2 is equal to 2 squared, which is 4. So the limit exists.")]
#only("6")[#voiceover("Second, the value of the function at x equals 2, f of 2, is also equal to 2 squared, which is 4.")]
#only("7")[#voiceover("Since both conditions are met, we can conclude that the function f of x equals x squared is indeed continuous at x equals 2.")]
]