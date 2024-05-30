#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculating pH]
#v(40pt)
What is the formula to calculate pH from hydrogen ion concentration?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) pH = log[H+]]#only("2-")[#text(fill:red)[a) pH = log[H+]]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) pH = -log[H+]]#only("3-")[#text(fill:green)[b) pH = -log[H+]]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) pH = 14 - log[H+]]#only("4-")[#text(fill:red)[c) pH = 14 - log[H+]]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) pH = [H+]]#only("5-")[#text(fill:red)[d) pH = [H+]]]

#only("1")[#voiceover("That's okay! Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) pH = log[H+] is incorrect because it's missing the negative sign. Remember, pH and [H+] are inversely related.")]
#only("3")[#voiceover("Option b) pH = -log[H+] is the correct formula. As [H+] increases, pH decreases, hence the negative logarithm.")]
#only("4")[#voiceover("Option c) pH = 14 - log[H+] is incorrect. While pH + pOH = 14, this is not the formula for calculating pH from [H+].")]
#only("5")[#voiceover("Option d) pH = [H+] is incorrect. pH is the negative logarithm of [H+], not equal to [H+].")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[The correct formula is: $"pH" = -log[H+]$]
#v(20pt)
#only("2-")[Here's why: 🔍]
#v(20pt)
#only("3-")[- pH is a measure of the acidity or basicity of a solution 🧪]
#only("4-")[- It's based on the concentration of hydrogen ions, [H+] 🔬]
#only("5-")[- As [H+] increases, the solution becomes more acidic, and pH decreases ⬇]
#only("6-")[- Conversely, as [H+] decreases, the solution becomes more basic, and pH increases ⬆]
#only("7-")[- The logarithm is used because [H+] can vary over a wide range 📏]
#only("8-")[- The negative sign accounts for the inverse relationship between pH and [H+] ➖]

#only("1")[#voiceover("Let's break down the correct formula step by step.")]
#only("2")[#voiceover("We use this formula because:")]
#only("3")[#voiceover("pH is a measure of the acidity or basicity of a solution.")]
#only("4")[#voiceover("It's based on the concentration of hydrogen ions, symbolized by [H+].")]
#only("5")[#voiceover("As the concentration of hydrogen ions increases, the solution becomes more acidic, and the pH value decreases.")]
#only("6")[#voiceover("On the other hand, as the concentration of hydrogen ions decreases, the solution becomes more basic, and the pH value increases.")]
#only("7")[#voiceover("The logarithm is used in the formula because the concentration of hydrogen ions can vary over a very wide range.")]
#only("8")[#voiceover("The negative sign in the formula accounts for the inverse relationship between pH and the concentration of hydrogen ions.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Example Calculation]
#v(40pt)
#only("1-")[Let's calculate the pH of a solution with [H+] = $1 dot 10^(-4)$ M]
#v(20pt)
#only("2-")[pH = -log[H+]]
#v(20pt)
#only("3-")[pH = -log($1 dot 10^(-4)$)]
#v(20pt)
#only("4-")[pH = -(-4)]
#v(20pt)
#only("5-")[pH = 4]
#v(40pt)
#only("6-")[Therefore, the solution has a pH of 4. 📝]

#only("1")[#voiceover("Now, let's use this formula in an example calculation.")]
#only("2")[#voiceover("We start with the formula pH equals negative log of the concentration of hydrogen ions.")]
#only("3")[#voiceover("We substitute the given hydrogen ion concentration of 1 times 10 to the negative 4 molar into the formula.")]
#only("4")[#voiceover("The negative logarithm of 1 times 10 to the negative 4 equals negative of negative 4.")]
#only("5")[#voiceover("Negative of negative 4 equals positive 4.")]
#only("6")[#voiceover("Therefore, a solution with a hydrogen ion concentration of 1 times 10 to the negative 4 molar has a pH of 4.")]
]