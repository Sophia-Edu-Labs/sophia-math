#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Verifying Inverse Functions]
#v(40pt)
#only("1-")[
- Compose the functions 🔄
- Check if the result is the identity function $x$ ✅
]
#only("1")[
#voiceover("To verify if two functions are inverses of each other, we compose them and check if the result is the identity function x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[
Let $f(x) = 2x + 3$ and $g(x) = (x - 3) / 2$
]
#only("1")[
#voiceover("Let's take an example. Suppose we have functions f of x equals 2x plus 3 and g of x equals x minus 3 divided by 2.")
]
#v(40pt)
#only("2-")[
Compose $f(g(x))$:
$f(g(x)) = 2((x - 3) / 2) + 3 = x - 3 + 3 = x$
]
#only("2")[
#voiceover("First, let's compose f of g of x. We substitute g of x into f of x. This gives us 2 times x minus 3 divided by 2, plus 3. Simplifying this, we get x minus 3 plus 3, which equals x.")
]
#v(40pt)
#only("3-")[
Compose $g(f(x))$:
$g(f(x)) = (2x + 3 - 3) / 2 = 2x / 2 = x$
]
#only("3")[
#voiceover("Now, let's compose g of f of x. We substitute f of x into g of x. This gives us 2x plus 3 minus 3, divided by 2. Simplifying this, we get 2x divided by 2, which equals x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[
- Both $f(g(x))$ and $g(f(x))$ equal $x$ 🎉
- Therefore, $f(x)$ and $g(x)$ are inverses 🙌
]
#only("1")[
#voiceover("Since both f of g of x and g of f of x equal x, which is the identity function, we can conclude that f of x and g of x are indeed inverse functions.")
]
]