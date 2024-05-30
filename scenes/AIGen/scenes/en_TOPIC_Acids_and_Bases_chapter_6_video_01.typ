#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pOH and [OH-]]
#v(40pt)
#only("1-")[- pOH: measure of basicity 🧪]
#v(20pt)
#only("2-")[- [OH-]: hydroxide ion concentration 🔬]
#v(20pt)
#only("3-")[- Formula: $"pOH" = -log["OH"-]$ 📐]
#only("1")[
#voiceover("pOH is a measure of the basicity of a solution. It tells us how basic a solution is.")
]
#only("2")[
#voiceover("The square brackets around OH- represent the concentration of hydroxide ions in the solution.")
]
#only("3")[
#voiceover("The formula to calculate pOH from the hydroxide ion concentration is pOH equals negative logarithm of the hydroxide ion concentration.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation]
#v(40pt)
#only("1-")[Given: $["OH"-] = 1 dot 10^(-3) "M"$ 💧]
#v(20pt)
#only("2-")[Step 1: $"pOH" = -log(1 dot 10^(-3))$]
#v(20pt)
#only("3-")[Step 2: $"pOH" = -(-3)$]
#v(20pt)
#only("4-")[Step 3: $"pOH" = 3$ 🎉]
#only("1")[
#voiceover("Let's do an example. Suppose we have a solution with a hydroxide ion concentration of 1 times 10 to the negative 3 molar.")
]
#only("2")[
#voiceover("We start by plugging this value into our formula. pOH equals negative log of 1 times 10 to the negative 3.")
]
#only("3")[
#voiceover("Using the properties of logarithms, we can simplify this to pOH equals negative of negative 3.")
]
#only("4")[
#voiceover("Which gives us a final pOH value of 3. The higher the pOH value, the less basic the solution is.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Relationship with pH]
#v(40pt)
#only("1-")[- pH: measure of acidity 🍋]
#v(20pt)
#only("2-")[- Formula: $"pH" + "pOH" = 14$ 🧮]
#v(20pt)
#only("3-")[Example: If $"pOH" = 3$, then $"pH" = 11$ 🤯]
#only("1")[
#voiceover("It's important to note that pOH is related to pH, which is a measure of the acidity of a solution.")
]
#only("2")[
#voiceover("The sum of pH and pOH always equals 14. This is a key relationship in acid-base chemistry.")
]
#only("3")[
#voiceover("So in our example, if the pOH is 3, then the pH must be 11, because 3 plus 11 equals 14.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- pOH measures basicity 📏]
#v(20pt)
#only("2-")[- Calculate using $"pOH" = -log["OH"-]$ 🧮]
#v(20pt)
#only("3-")[- Related to pH: $"pH" + "pOH" = 14$ 🔗]
#only("1")[
#voiceover("In summary, pOH is a measure of the basicity of a solution.")
]
#only("2")[
#voiceover("We can calculate it using the formula pOH equals negative log of the hydroxide ion concentration.")
]
#only("3")[
#voiceover("And remember, pOH is always related to pH. The sum of pH and pOH equals 14.")
]
]