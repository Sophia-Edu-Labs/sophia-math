#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Stock Trading Concepts]
#v(40pt)
#only("1-")[Which mathematical concept is NOT commonly used in stock trading?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Probability]#only("2-")[#text(fill:red)[a) Probability]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Algebra]#only("3-")[#text(fill:red)[b) Algebra]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Calculus]#only("4-")[#text(fill:red)[c) Calculus]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned green, because it is correct.
#only("-4")[d) Typography]#only("5-")[#text(fill:green)[d) Typography]]
#v(40pt)

#only("1")[#voiceover("Great job! You got the correct answer.")]
#only("2")[#voiceover("a) Probability is commonly used in stock trading to model the likelihood of different outcomes and to make investment decisions based on expected returns and risks.")]
#only("3")[#voiceover("b) Algebra is also frequently used, for example to calculate returns, solve equations related to pricing models, and analyze relationships between variables.")]
#only("4")[#voiceover("c) Calculus concepts like derivatives are applied to measure rates of change, optimize portfolios, and price complex financial instruments.")]
#only("5")[#voiceover("But d) Typography, which deals with the style and appearance of printed matter, is not directly relevant to the mathematical analysis involved in stock trading. Therefore, typography is the correct answer.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[Stock trading relies heavily on mathematical concepts:]
#v(20pt)
#only("2-")[- 📊 Probability theory to model uncertainty]
#only("3-")[- 🧮 Algebra for calculations and relationships]
#only("4-")[- 📈 Calculus for rates of change and optimization]
#v(20pt) 
#only("5-")[But concepts like typography are less relevant to the core mathematical analysis. 🎨]

#only("1")[#voiceover("To summarize, stock trading makes extensive use of various branches of mathematics.")]
#only("2")[#voiceover("Probability theory helps to quantify the uncertainties inherent in financial markets and to make decisions based on the likelihood of different scenarios.")]
#only("3")[#voiceover("Algebraic methods are used for many of the routine calculations and to model relationships between financial quantities.")]
#only("4")[#voiceover("And calculus is essential for understanding rates of change, optimizing investment strategies, and pricing derivatives.")]
#only("5")[#voiceover("However, fields like typography, while important in their own right, are not as directly applicable to the mathematical core of stock trading analysis. Understanding which mathematical tools are most relevant can help focus one's learning and application of math in finance.")]
]