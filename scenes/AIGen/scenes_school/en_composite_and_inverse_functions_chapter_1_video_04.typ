#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Decomposing Functions 🧩]
#v(40pt)
#only("1-")[- Identifying simpler functions that combine to form a composite function]
#only("1")[
#voiceover("Decomposing functions involves identifying simpler functions that combine to form a given composite function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📝]
#v(40pt)
#only("1-")[$ h(x) = (2x + 3)^2 $]
#v(20pt)
#only("2-")[Decompose into $f(x)$ and $g(x)$:]
#v(10pt)
#only("3-")[$ f(x) = x^2 $]
#only("4-")[$ g(x) = 2x + 3 $]
#only("1")[
#voiceover("Let's consider the function h of x equals open parentheses 2x plus 3 close parentheses squared.")
]
#only("2")[
#voiceover("To decompose this function, we need to find simpler functions f of x and g of x such that h of x equals f of g of x.")
]
#only("3")[
#voiceover("We can choose f of x to be x squared, which is the outer function.")
]
#only("4")[
#voiceover("And g of x can be 2x plus 3, which is the inner function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Verification ✅]
#v(40pt)
#only("1-")[$ h(x) = f(g(x)) $]
#v(20pt)
#only("2-")[$ h(x) = (2x + 3)^2 = f(g(x)) $]
#only("1")[
#voiceover("To verify the decomposition, we can check if h of x equals f of g of x.")
]
#only("2")[
#voiceover("Substituting the expressions for f and g, we see that open parentheses 2x plus 3 close parentheses squared indeed equals f of g of x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- Decomposition breaks down a composite function into simpler parts]
#v(20pt)
#only("2-")[- The outer function is applied to the result of the inner function]
#v(20pt)
#only("3-")[- Verification involves checking if $h(x) = f(g(x))$]
#only("1")[
#voiceover("The key takeaways are that decomposition breaks down a composite function into simpler parts.")
]
#only("2")[
#voiceover("The outer function is applied to the result of the inner function.")
]
#only("3")[
#voiceover("And verification involves checking if h of x equals f of g of x.")
]
]