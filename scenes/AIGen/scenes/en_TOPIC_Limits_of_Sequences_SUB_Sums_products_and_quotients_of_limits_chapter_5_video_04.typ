#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits in Real-World Applications 🌍]
#v(40pt)
#only("1-")[- Limits of sequences are useful in various real-world applications]
#v(20pt)
#only("2-")[- Examples: compound interest 💰 and population growth 👥]
#only("1")[
#voiceover("Limits of sequences are not just an abstract mathematical concept. They have practical applications in the real world.")
]
#only("2")[
#voiceover("For instance, they can be used to calculate compound interest in finance and to model population growth in biology.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Compound Interest 💰]
#v(40pt)
#only("1-")[- Compound interest can be modeled using a sequence]
#v(20pt)
#only("2-")[$ a_n = (1 + 1/n)^n $, where $n$ is the number of compounding periods]
#v(20pt)
#only("3-")[$ lim_(n -> infinity) a_n = e $]
#only("1")[
#voiceover("Compound interest is the addition of interest to the principal sum of a loan or deposit. It can be modeled using a sequence.")
]
#only("2")[
#voiceover("The sequence a sub n equals open parenthesis 1 plus 1 over n close parenthesis to the power of n models the growth of an investment compounded n times per year.")
]
#only("3")[
#voiceover("As n approaches infinity, meaning the interest is compounded continuously, the limit of this sequence is the mathematical constant e, approximately equal to 2.71828.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Population Growth 👥]
#v(40pt)
#only("1-")[- Population growth can be modeled using a sequence]
#v(20pt)
#only("2-")[$ p_n = p_0 (1 + r)^n $, where $p_0$ is the initial population and $r$ is the growth rate]
#v(20pt)
#only("3-")[$ lim_(n -> infinity) p_n = infinity $ if $r > 0$]
#only("1")[
#voiceover("Population growth is another area where limits of sequences come into play.")
]
#only("2")[
#voiceover("The sequence p sub n equals p sub 0 times open parenthesis 1 plus r close parenthesis to the power of n models the growth of a population, where p sub 0 is the initial population and r is the growth rate per time period.")
]
#only("3")[
#voiceover("If the growth rate r is positive, the limit of this sequence as n approaches infinity is infinity, indicating unbounded population growth.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Recap 🔍]
#v(40pt)
#only("1-")[- Limits of sequences are useful in real-world applications 🌍]
#v(20pt)
#only("2-")[- Compound interest 💰 and population growth 👥 can be modeled using sequences]
#v(20pt)
#only("3-")[- Understanding limits helps predict long-term behavior 📈]
#only("1")[
#voiceover("To recap, limits of sequences are not just a theoretical concept. They have practical uses in various fields.")
]
#only("2")[
#voiceover("We've seen how they can model compound interest in finance and population growth in biology.")
]
#only("3")[
#voiceover("By understanding limits, we can predict the long-term behavior of these systems, whether it's the ultimate value of an investment or the trajectory of a population.")
]
]