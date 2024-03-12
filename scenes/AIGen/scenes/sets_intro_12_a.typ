#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Schnittmengen]
#v(40pt)
- $X = {2, 4, 6, 8}$
- $Y = {1, 2, 3, 4}$
- $Z = {3, 4, 5, 6}$
#v(40pt)
Welche Aussage ist #text(weight: "bold")[falsch]?
#v(40pt)
#only("-1")[- $X sect Y = {1, 2, 3, 4}$]#only("2-")[#text(fill:red)[- $X sect Y = {1, 2, 3, 4}$]]
#v(10pt)
#only("-2")[- $Y sect Z = {3, 4}$]#only("3-")[#text(fill:green)[- $Y sect Z = {3, 4}$]]
#v(10pt)
#only("-3")[- $X sect Z = {4, 6}$]#only("4-")[#text(fill:green)[- $X sect Z = {4, 6}$]]
#v(10pt)
#only("-4")[- $X sect Y sect Z = {4}$]#only("5-")[#text(fill:green)[- $X sect Y sect Z = {4}$]]
#only("1")[#voiceover("Das ist leider falsch, schade...")]
#only("2")[#voiceover("Die Aussage, dass der Schnitt von X und Y die Menge bestehend aus 1, 2, 3 und 4 ergibt, ist falsch. Der Schnitt von X und Y enthält nur die Elemente 2 und 4, da nur diese in beiden Mengen vorkommen.")]
#only("3")[#voiceover("Die Aussage, dass der Schnitt von Y und Z die Menge bestehend aus 3 und 4 ergibt, ist korrekt, da 3 und 4 die einzigen Elemente sind, die sowohl in Y als auch in Z enthalten sind.")]
#only("4")[#voiceover("Auch die Aussage, dass der Schnitt von X und Z die Menge bestehend aus 4 und 6 ergibt, ist korrekt, da 4 und 6 die gemeinsamen Elemente von X und Z sind.")]
#only("5")[#voiceover("Schließlich ist die Aussage, dass der Schnitt von X, Y und Z die Menge bestehend aus 4 ergibt, ebenfalls korrekt. Das Element 4 ist das einzige, das in allen drei Mengen vorkommt.")]
]