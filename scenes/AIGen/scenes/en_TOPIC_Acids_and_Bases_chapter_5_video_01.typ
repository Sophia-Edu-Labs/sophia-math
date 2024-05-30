#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating pH]
#v(40pt)
#only("1-")[pH = -log[H+]]
#only("1")[
#voiceover("To calculate the pH of a solution, we use the formula: pH equals negative log of the hydrogen ion concentration, denoted as H plus in square brackets.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydrogen Ion Concentration]
#v(40pt)
#only("1-")[- Measured in moles per liter (M)]
#v(20pt)
#only("2-")[- Example: [H+] = 1 × 10^(-3) M]
#only("1")[
#voiceover("The hydrogen ion concentration is measured in moles per liter, or molarity, denoted by the letter M.")
]
#only("2")[
#voiceover("For example, if the hydrogen ion concentration is 1 times 10 to the power of negative 3 moles per liter...")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Logarithm]
#v(40pt)
#only("1-")[- Base 10 logarithm]
#v(20pt)
#only("2-")[- Negative sign: inverse relationship]
#only("1")[
#voiceover("In the pH formula, we use the base 10 logarithm.")
]
#only("2")[
#voiceover("The negative sign before the logarithm indicates an inverse relationship between the hydrogen ion concentration and pH.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Calculation Example]
#v(40pt)
#only("1-")[Given: [H+] = 1 × 10^(-3) M]
#v(20pt)
#only("2-")[pH = -log(1 × 10^(-3))]
#v(20pt)
#only("3-")[pH = -(-3)]
#v(20pt)
#only("4-")[pH = 3 🧪]
#only("1")[
#voiceover("Let's calculate the pH for a solution with a hydrogen ion concentration of 1 times 10 to the power of negative 3 moles per liter.")
]
#only("2")[
#voiceover("We substitute this value into the formula: pH equals negative log of 1 times 10 to the power of negative 3.")
]
#only("3")[
#voiceover("Simplifying, we get: pH equals negative of negative 3.")
]
#only("4")[
#voiceover("Therefore, the pH of the solution is 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- pH = -log[H+]]
#v(20pt)
#only("2-")[- [H+] in moles per liter (M)]
#v(20pt)
#only("3-")[- Higher [H+] → Lower pH (more acidic)]
#only("1")[
#voiceover("In summary, to calculate pH, use the formula: pH equals negative log of the hydrogen ion concentration.")
]
#only("2")[
#voiceover("The hydrogen ion concentration is measured in moles per liter, or molarity.")
]
#only("3")[
#voiceover("Remember, a higher hydrogen ion concentration results in a lower pH, indicating a more acidic solution.")
]
]