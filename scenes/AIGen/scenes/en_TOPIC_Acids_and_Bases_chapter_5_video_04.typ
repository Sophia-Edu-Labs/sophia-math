#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating pH 🧮]
#v(40pt)
#only("1-")[- pH is a measure of acidity or basicity 🍋🧴]
#v(20pt)
#only("2-")[- Calculated from hydrogen ion concentration [H+] 🔬]
#v(20pt)
#only("3-")[- Formula: $"pH" = -log[H+]$ 📜]
#only("1")[
#voiceover("Let's quickly recap how to calculate pH. pH is a measure of the acidity or basicity of a solution.")
]
#only("2")[
#voiceover("We can calculate pH from the hydrogen ion concentration, denoted by the square brackets around H plus.")
]
#only("3")[
#voiceover("The formula to calculate pH is pH equals negative log of the hydrogen ion concentration.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example 🌟]
#v(40pt)
#only("1-")[If $[H+] = 1 dot 10^(-4) "M"$, calculate the pH.]
#v(20pt)
#only("2-")[
$ "pH" = -log[H+] $
$ "pH" = -log(1 dot 10^(-4)) $
]
#v(20pt)
#only("3-")[
$ "pH" = -(-4) $
$ "pH" = 4 $
]
#only("1")[
#voiceover("Let's do a quick example. If the hydrogen ion concentration is 1 times 10 to the negative 4 molar, let's calculate the pH.")
]
#only("2")[
#voiceover("We start with our formula, pH equals negative log of the hydrogen ion concentration. We substitute in our value of 1 times 10 to the negative 4 for the concentration.")
]
#only("3")[
#voiceover("Simplifying, the negative log of 1 times 10 to the negative 4 is just the negative of negative 4, which is positive 4. So the pH is 4.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways 🔑]
#v(40pt)
#only("1-")[- pH is a measure of acidity or basicity 🍋🧴]
#v(20pt)
#only("2-")[- Calculated from hydrogen ion concentration [H+] 🔬]
#v(20pt)
#only("3-")[- Formula: $"pH" = -log[H+]$ 📜]
#only("1")[
#voiceover("To summarize, remember that pH is a measure of acidity or basicity.")
]
#only("2")[
#voiceover("We calculate it from the hydrogen ion concentration.")
]
#only("3")[
#voiceover("And the formula is pH equals negative log of the hydrogen ion concentration. Now you're ready to calculate pH!")
]
]