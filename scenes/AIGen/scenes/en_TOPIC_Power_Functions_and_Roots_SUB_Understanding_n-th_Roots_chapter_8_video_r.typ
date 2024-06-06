#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap what we've learned about n-th roots and their applications.")
]
#text(size: 30pt, weight: "bold")[n-th Roots Recap]
// The title "n-th Roots Recap" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("The n-th root of a number is a value that, when raised to the power of n, gives the original number.")
]
#only("2-")[- n-th root: $root(n, a)$ such that $root(n,a)^n = a$]
// The definition of n-th root is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("n-th roots have various properties, such as the n-th root of a product being the product of n-th roots, and the n-th root of a quotient being the quotient of n-th roots.")
]
#only("3-")[- Properties: $root(n, ab) = root(n,a) root(n,b)$, $root(n, a/b) = root(n,a) / root(n,b)$]
// The properties of n-th roots are shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("n-th roots are used in various real-world applications. For example, in finance, the n-th root is used to calculate the interest rate per period when the annual interest rate and the number of compounding periods are known.")
]
#only("4-")[- Applications: 📈 Finance (interest rates), 🌍 Physics (calculations)]
// The applications of n-th roots are shown from slide 4 onward
#v(40pt)
#only("5")[
#voiceover("In physics, n-th roots are used in various equations and calculations, such as in the calculation of the period of a pendulum or in the determination of the velocity of a falling object.")
]
]


#slide()[
#only("1")[
#voiceover("Here's an example of using n-th roots to calculate the interest rate per period.")
]
#text(size: 30pt, weight: "bold")[Application Example: Interest Rates]
// The title "Application Example: Interest Rates" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Let's say the annual interest rate is 10% and the interest is compounded monthly. To find the monthly interest rate, we calculate the 12th root of 1.1, since there are 12 months in a year.")
]
#only("2-")[- Annual interest rate: 10% (0.1), compounded monthly (12 times per year)]
// The given information is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("The calculation is the 12th root of 1.1, which is approximately 0.00797 or about 0.8% per month.")
]
#only("3-")[- Monthly interest rate: $root(12, 1.1) - 1 ≈ 0.00797$ or ~0.8%]
// The calculation and result are shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("So, by using the n-th root, we can determine the interest rate for any compounding period, given the annual rate and the number of periods.")
]
]


#slide()[
#only("1")[
#voiceover("In summary, n-th roots are a fundamental concept in mathematics with important properties and applications.")
]
#text(size: 30pt, weight: "bold")[Summary]
// The title "Summary" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("We've seen that the n-th root of a number is a value that, when raised to the power of n, gives the original number.")
]
#only("2-")[- n-th root: $root(n, a)$ such that $root(n,a)^n = a$ 📏]
// The definition of n-th root is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("We've also explored some of the key properties of n-th roots, such as the n-th root of a product and the n-th root of a quotient.")
]
#only("3-")[- Properties: $root(n, ab) = root(n,a) root(n,b)$, $root(n, a/b) = root(n,a) / root(n,b)$ 🧮]
// The properties of n-th roots are shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("Lastly, we've seen how n-th roots are applied in various fields, such as finance for calculating interest rates and physics for various calculations.")
]
#only("4-")[- Applications: 📈 Finance, 🌍 Physics 🔍]
// The applications of n-th roots are shown from slide 4 onward
#v(40pt)
#only("5")[
#voiceover("Understanding n-th roots and their properties and applications is crucial for many areas of mathematics and science.")
]
]