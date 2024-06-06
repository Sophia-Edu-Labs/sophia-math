#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rational Exponents in Real Life 🌍]
#v(40pt)
#only("1-")[- Used in compound interest 💰 and growth rates 📈]
#v(20pt)
#only("2-")[- Formula: $ A = P (1 + r/n)^(n t) $]
#v(20pt)
#only("3-")[- Example: \$1000 at 5% interest compounded monthly for 10 years]
#only("1")[
#voiceover("Rational exponents aren't just abstract mathematical concepts. They have real-world applications, particularly in finance and population growth.")
]
#only("2")[
#voiceover("The compound interest formula uses rational exponents. In this formula, A is the final amount, P is the principal, r is the annual interest rate, n is the number of times interest is compounded per year, and t is the number of years.")
]
#only("3")[
#voiceover("For example, if you invest 1000 dollars at a 5 percent annual interest rate compounded monthly for 10 years, you can use this formula with a rational exponent to calculate your final amount.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Compound Interest Calculation 🧮]
#v(40pt)
#only("1-")[$ A = 1000 (1 + 0.05/12)^(12 dot 10) $]
#v(20pt)
#only("2-")[$ A = 1000 (1.00417)^(120) $]
#v(20pt)
#only("3-")[$ A = 1647.01 $]
#only("1")[
#voiceover("Let's plug in the values. P is 1000, r is 0.05 for 5 percent, n is 12 because it's compounded monthly, and t is 10 for 10 years.")
]
#only("2")[
#voiceover("Simplifying inside the parentheses, we get 1.00417 to the power of 120.")
]
#only("3")[
#voiceover("Using a calculator, we find that after 10 years, your 1000 dollars will have grown to about 1647 dollars and 1 cent.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Growth Rates 📈]
#v(40pt)
#only("1-")[- Similar formula: $ P_t = P_0 (1 + r)^t $]
#v(20pt)
#only("2-")[- $ P_t $ = population at time $ t $, $ P_0 $ = initial population, $ r $ = growth rate]
#v(20pt)
#only("3-")[- Example: Population of 1000, growing at 2% annually for 5 years]
#only("1")[
#voiceover("Rational exponents are also used in calculating population growth. The formula is similar: the population at time t equals the initial population times the quantity one plus the growth rate, raised to the power of t.")
]
#only("2")[
#voiceover("In this formula, P sub t is the population at time t, P sub 0 is the initial population, r is the growth rate, and t is the number of time periods.")
]
#only("3")[
#voiceover("For instance, if a population of 1000 is growing at 2 percent annually, after 5 years the population will be 1000 times 1.02 to the power of 5, which is about 1104.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Rational exponents used in compound interest and growth rates 📈💰]
#v(20pt)
#only("2-")[- Formulas: $ A = P (1 + r/n)^(n t) $ and $ P_t = P_0 (1 + r)^t $]
#v(20pt)
#only("3-")[- Real-world applications of abstract mathematical concepts 🌍🧮]
#only("1")[
#voiceover("In summary, rational exponents are used in real-world problems like calculating compound interest and growth rates.")
]
#only("2")[
#voiceover("The formulas for compound interest and population growth both involve raising a quantity to a rational power.")
]
#only("3")[
#voiceover("These are just a couple examples of how abstract mathematical concepts like rational exponents can have concrete applications in the real world.")
]
]