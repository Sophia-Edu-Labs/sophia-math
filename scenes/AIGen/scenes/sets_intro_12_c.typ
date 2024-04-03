#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Schnittmengen]
#v(40pt)
- $A = {2, 4, 6, 8}$
- $B = {1, 2, 3, 4}$
- $C = {3, 4, 5, 6}$
#v(40pt)
Welche Aussage ist #text(weight: "bold")[falsch]?
#v(40pt)
#only("-1")[- $A sect B = {1, 2, 3, 4}$]#only("2-")[#text(fill:red)[- $A sect B = {1, 2, 3, 4}$]]
#v(10pt)
#only("-2")[- $B sect C = {3, 4}$]#only("3-")[#text(fill:green)[- $B sect C = {3, 4}$]]
#v(10pt)
#only("-3")[- $A sect C = {4, 6}$]#only("4-")[#text(fill:green)[- $A sect C = {4, 6}$]]
#v(10pt)
#only("-4")[- $A sect B sect C = {4}$]#only("5-")[#text(fill:green)[- $A sect B sect C = {4}$]]
#only("1")[#voiceover("Das ist leider falsch, schade...")]
#only("2")[#voiceover("Die Aussage, dass der Schnitt von A und B die Menge bestehend aus 1, 2, 3 und 4 ergibt, ist falsch. Der Schnitt von A und B enthält nur die Elemente 2 und 4, da nur diese in beiden Mengen vorkommen.")]
#only("3")[#voiceover("Die Aussage, dass der Schnitt von B und C die Menge bestehend aus 3 und 4 ergibt, ist korrekt, da 3 und 4 die einzigen Elemente sind, die sowohl in B als auch in C enthalten sind.")]
#only("4")[#voiceover("Auch die Aussage, dass der Schnitt von A und C die Menge bestehend aus 4 und 6 ergibt, ist korrekt, da 4 und 6 die gemeinsamen Elemente von A und C sind.")]
#only("5")[#voiceover("Schließlich ist die Aussage, dass der Schnitt von A, B und C die Menge bestehend aus 4 ergibt, ebenfalls korrekt. Das Element 4 ist das einzige, das in allen drei Mengen vorkommt.")]
]