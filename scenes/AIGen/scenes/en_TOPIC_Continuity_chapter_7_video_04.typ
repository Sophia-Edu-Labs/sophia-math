#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Continuity and Limits 🔄]
#v(40pt)
#only("1-")[- Continuity is closely related to limits]
#v(20pt)
#only("2-")[- For a function to be continuous at a point:]
#v(20pt)
#only("3-")[  1. The limit must exist]
#v(10pt)
#only("4-")[  2. The function must be defined at that point]
#v(10pt)
#only("5-")[  3. The limit must equal the function's value at that point]
#only("1")[#voiceover("Continuity and limits are closely related concepts in mathematics.")]
#only("2")[#voiceover("For a function to be continuous at a specific point, three conditions must be met.")]
#only("3")[#voiceover("First, the limit of the function as x approaches the point must exist.")]
#only("4")[#voiceover("Second, the function must be defined at that point.")]
#only("5")[#voiceover("And third, the limit of the function as x approaches the point must be equal to the function's value at that point.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📈]
#v(40pt)
#only("1-")[Consider the function $f(x) = x^2$]
#v(20pt)
#only("2-")[Is $f(x)$ continuous at $x = 1$?]
#v(20pt)
#only("3-")[1. $lim_(x->1) f(x) = lim_(x->1) x^2 = 1$]
#v(10pt)
#only("4-")[2. $f(1) = 1^2 = 1$]
#v(10pt)
#only("5-")[3. $lim_(x->1) f(x) = f(1)$]
#v(10pt)
#only("6-")[Therefore, $f(x)$ is continuous at $x = 1$ ✅]
#only("1")[#voiceover("Let's consider an example. Take the function f of x equals x squared.")]
#only("2")[#voiceover("We want to determine if f of x is continuous at x equals 1.")]
#only("3")[#voiceover("First, we find the limit of f of x as x approaches 1. This limit is equal to 1.")]
#only("4")[#voiceover("Next, we evaluate the function at x equals 1. f of 1 is also equal to 1.")]
#only("5")[#voiceover("Finally, we compare the limit and the function value. Since the limit as x approaches 1 is equal to f of 1,")]
#only("6")[#voiceover("we can conclude that f of x is indeed continuous at x equals 1.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Continuity requires the limit to equal the function's value]
#v(20pt)
#only("2-")[- Check the limit, function value, and their equality]
#v(20pt)
#only("3-")[- Understanding continuity is crucial for analyzing functions 📊]
#only("1")[#voiceover("The key takeaway is that continuity requires the limit of a function as x approaches a point to be equal to the function's value at that point.")]
#only("2")[#voiceover("To verify continuity, always check the existence of the limit, the function's value at the point, and the equality between the two.")]
#only("3")[#voiceover("Understanding continuity is crucial for analyzing the behavior and properties of functions in mathematics.")]
]