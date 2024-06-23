#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Converting Decimals with Leading Zeros to Fractions]
#v(40pt)
#only("1-")[- Decimals with leading zeros follow the same rule. 📏]
#v(20pt)
#only("2-")[- Count the decimal places for the denominator. 🔢]
#v(20pt)
#only("3-")[- Example: $0.007$]
#only("1")[
#voiceover("Let's review how to convert decimals with leading zeros to fractions. The same rules apply as with other decimals.")
]
#only("2")[
#voiceover("We count the number of decimal places to determine the denominator.")
]
#only("3")[
#voiceover("For example, let's consider the decimal zero point zero zero seven.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Decimals with Leading Zeros]
#v(40pt)
#only("1-")[- Step 1: Count the decimal places. 🔢]
#v(20pt)
#only("2-")[- Step 2: Remove the decimal point. ✂️]
#v(20pt)
#only("3-")[- Step 3: Divide by a power of ten. ➗]
#v(20pt)
#only("4-")[- Example: $0.007$ becomes $7/1000$.]
#only("1")[
#voiceover("First, count the number of decimal places in the decimal number.")
]
#only("2")[
#voiceover("Next, remove the decimal point.")
]
#only("3")[
#voiceover("Then, divide the resulting number by a one, followed by zeros. Add one zero for each decimal place.")
]
#only("4")[
#voiceover("For example, zero point zero zero seven becomes seven over one thousand.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $0.007$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: Count the decimal places in $0.007$. There are 3 decimal places. 🔢]
#v(20pt)
#only("2-")[- Step 2: Remove the decimal point: $7$. ✂️]
#v(20pt)
#only("3-")[- Step 3: Divide by $10^3 = 1000$: $7/1000$. ➗]
#v(20pt)
#only("1")[
#voiceover("Let's see an example. For zero point zero zero seven, count the decimal places: there are three.")
]
#only("2")[
#voiceover("Remove the decimal point to get seven.")
]
#only("3")[
#voiceover("Then, divide seven by one thousand, because there are three decimal places. So, seven over one thousand.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Count the decimal places. 🔢]
#v(20pt)
#only("2-")[- Remove the decimal point. ✂️]
#v(20pt)
#only("3-")[- Divide by a power of ten. ➗]
#only("1")[
#voiceover("To summarize, first count the decimal places.")
]
#only("2")[
#voiceover("Next, remove the decimal point.")
]
#only("3")[
#voiceover("Then, divide by a one with zeros, one zero for each decimal place. That's it!")
]
]