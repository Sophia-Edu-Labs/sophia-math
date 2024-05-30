#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pOH Formula]
#v(40pt)
What is the formula to calculate pOH from hydroxide ion concentration?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) pOH = log[OH-]]#only("2-")[#text(fill:red)[a) pOH = log[OH-]]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) pOH = -log[OH-]]#only("3-")[#text(fill:green)[b) pOH = -log[OH-]]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) pOH = 14 - log[OH-]]#only("4-")[#text(fill:red)[c) pOH = 14 - log[OH-]]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) pOH = [OH-]]#only("5-")[#text(fill:red)[d) pOH = [OH-]]]

#only("1")[#voiceover("Not quite. Let me show you the correct solution.")]
#only("2")[#voiceover("Option a) pOH = log[OH-] is incorrect. This would give the wrong relationship between pOH and hydroxide concentration.")]
#only("3")[#voiceover("Option b) pOH = -log[OH-] is the correct formula. pOH is defined as the negative logarithm of the hydroxide ion concentration.")]
#only("4")[#voiceover("Option c) pOH = 14 - log[OH-] is incorrect. While pOH and pH are related by pOH + pH = 14, this is not the definition of pOH itself.")]
#only("5")[#voiceover("Option d) pOH = [OH-] is also incorrect. pOH is a logarithmic scale, not directly equal to the hydroxide concentration.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[The correct formula is: pOH = -log[OH-]]
#v(20pt)
#only("2-")[Here's why: 🔍]
#v(20pt)
#only("3-")[- pOH is defined as the negative logarithm of [OH-]]
#v(10pt)
#only("4-")[- This is analogous to pH being the negative logarithm of [H+]]
#v(10pt)
#only("5-")[- The negative logarithm scales the values conveniently]
#v(10pt)
#only("6-")[- It allows us to work with smaller, manageable numbers]
#v(40pt)
#only("7-")[So remember, whenever you need to find pOH, use: $"pOH" = -log["OH"-]$ 📝]

#only("1")[#voiceover("The correct formula to calculate pOH from the hydroxide ion concentration is pOH equals the negative logarithm of the hydroxide concentration.")]
#only("2")[#voiceover("Let's understand why this is the case.")]
#only("3")[#voiceover("By definition, pOH is the negative logarithm of the hydroxide ion concentration. This is what pOH means.")]
#only("4")[#voiceover("This definition is analogous to how pH is defined as the negative logarithm of the hydrogen ion concentration.")]
#only("5")[#voiceover("Using the negative logarithm scales the concentration values in a way that is more convenient to work with.")]
#only("6")[#voiceover("Instead of dealing with very small concentration numbers, the pOH scale allows us to work with more manageable figures.")]
#only("7")[#voiceover("So whenever you need to calculate pOH, remember to use the formula pOH equals negative log of the hydroxide concentration. This formula directly stems from the definition of pOH.")]
]