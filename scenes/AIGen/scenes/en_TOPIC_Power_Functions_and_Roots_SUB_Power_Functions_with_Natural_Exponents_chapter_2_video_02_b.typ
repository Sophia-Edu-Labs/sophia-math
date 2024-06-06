#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Even Power Functions]
#v(40pt)
#only("1-")[Which of the following is an even power function?]
#v(40pt)
#only("-1")[a) $f(x) = x^3$]#only("2-")[#text(fill:red)[a) $f(x) = x^3$]]
#v(10pt)
#only("-2")[b) $f(x) = x^5$]#only("3-")[#text(fill:red)[b) $f(x) = x^5$]]
#v(10pt)
#only("-3")[c) $f(x) = x^2$]#only("4-")[#text(fill:green)[c) $f(x) = x^2$]]
#v(10pt)
#only("-4")[d) $f(x) = x^7$]#only("5-")[#text(fill:red)[d) $f(x) = x^7$]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's review the correct solution.")]

#only("2")[#voiceover("Option a, $f(x) = x^3$, is not an even power function because the exponent, 3, is an odd number.")]

#only("3")[#voiceover("Similarly, option b, $f(x) = x^5$, is not an even power function because the exponent, 5, is also an odd number.")]

#only("4")[#voiceover("Option c, $f(x) = x^2$, is the correct answer. It is an even power function because the exponent, 2, is an even number.")]

#only("5")[#voiceover("Finally, option d, $f(x) = x^7$, is not an even power function because the exponent, 7, is an odd number.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Explanation]
#v(40pt)
#only("1-")[A power function is of the form $f(x) = x^n$ where $n$ is a constant. 🧮]
#v(20pt)
#only("2-")[If $n$ is an even number, it's an #text(fill:green)[even power function]. ✅]
#v(20pt)
#only("3-")[If $n$ is an odd number, it's an #text(fill:red)[odd power function]. ❌]
#v(40pt)
#only("4-")[Examples:]
#v(20pt)
#only("5-")[
- $f(x) = x^2$ #text(fill:green)[(Even)]
- $f(x) = x^4$ #text(fill:green)[(Even)]
- $f(x) = x^3$ #text(fill:red)[(Odd)]
- $f(x) = x^5$ #text(fill:red)[(Odd)]
]

#only("1")[#voiceover("Remember, a power function is a function of the form $f(x) = x^n$ where $n$ is a constant.")]

#only("2")[#voiceover("If the exponent, $n$, is an even number, then we call it an even power function.")]

#only("3")[#voiceover("On the other hand, if the exponent, $n$, is an odd number, then we call it an odd power function.")]

#only("4")[#voiceover("Let's look at some examples.")]

#only("5")[#voiceover("$f(x) = x^2$ and $f(x) = x^4$ are even power functions because their exponents, 2 and 4, are even numbers. In contrast, $f(x) = x^3$ and $f(x) = x^5$ are odd power functions because their exponents, 3 and 5, are odd numbers.")]
]