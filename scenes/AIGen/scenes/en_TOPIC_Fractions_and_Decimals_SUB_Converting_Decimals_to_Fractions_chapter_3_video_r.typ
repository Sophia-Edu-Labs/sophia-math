#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Converting Numbers Greater than 1 to Fractions]
#v(40pt)
#only("1-")[- Converting numbers greater than 1 to fractions is useful for precise calculations. 🔢]
#only("2-")[- Let's review the steps involved. 📏]
#only("1")[
#voiceover("Let's review how to convert numbers greater than 1 to fractions. This is useful for precise calculations.")
]
#only("2")[
#voiceover("We'll go through the steps involved in this process.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Steps to Convert Numbers Greater than 1 to Fractions]
#v(40pt)
#only("1-")[- Step 1: Count the digits after the decimal point. 🔢]
#v(20pt)
#only("2-")[- Step 2: Remove the decimal point. ✂️]
#v(20pt)
#only("3-")[- Step 3: Divide by 1 followed by as many zeros as digits after the point. ➗]
#v(20pt)
#only("4-")[- Example: $2.75$ becomes $275/100$.]
#only("1")[
#voiceover("First, count the number of digits after the decimal point.")
]
#only("2")[
#voiceover("Next, remove the decimal point.")
]
#only("3")[
#voiceover("Then, divide the resulting number by one followed by as many zeros as there were digits after the decimal point.")
]
#only("4")[
#voiceover("For example, two point seven five becomes two hundred seventy-five over one hundred.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example: Converting $2.75$ to a Fraction]
#v(40pt)
#only("1-")[- Step 1: Count the digits after the decimal point in $2.75$. There are 2 digits. 🔢]
#v(20pt)
#only("2-")[- Step 2: Remove the decimal point: $275$. ✂️]
#v(20pt)
#only("3-")[- Step 3: Divide by $10^2 = 100$: $275/100$. ➗]
#v(20pt)
#only("1")[
#voiceover("Let's see an example. For two point seven five, count the digits after the decimal point: there are two.")
]
#only("2")[
#voiceover("Remove the decimal point to get two hundred seventy-five.")
]
#only("3")[
#voiceover("Then, divide two hundred seventy-five by one hundred, because there are two digits after the decimal point. So, two hundred seventy-five over one hundred.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Count the digits after the decimal point. 🔢]
#v(20pt)
#only("2-")[- Remove the decimal point. ✂️]
#v(20pt)
#only("3-")[- Divide by 1 followed by as many zeros as digits after the point. ➗]
#only("1")[
#voiceover("To summarize, first count the digits after the decimal point.")
]
#only("2")[
#voiceover("Next, remove the decimal point.")
]
#only("3")[
#voiceover("Then, divide by one followed by as many zeros as there were digits after the decimal point. That's it!")
]
]