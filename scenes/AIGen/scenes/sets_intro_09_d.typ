#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Vereinigung von Mengen]
#v(40pt)
- $A = {1, 2, 3}$

- $B = {3, 4, 5}$

- $C = {2, 4, 6}$

#v(40pt)
Welche Aussage ist #text(weight: "bold")[falsch]?
#v(40pt)
#only("-1")[- $A union B = {1, 2, 3, 4, 5}$]#only("2-")[#text(fill:green)[- $A union B = {1, 2, 3, 4, 5}$]]
#v(10pt)
#only("-2")[- $B union C = {2, 3, 4, 5, 6}$]#only("3-")[#text(fill:green)[- $B union C = {2, 3, 4, 5, 6}$]]
#v(10pt)
#only("-3")[- $A union C = {1, 2, 3, 4, 5, 6}$]#only("4-")[#text(fill:red)[- $A union C = {1, 2, 3, 4, 5, 6}$]]
#v(10pt)
#only("-4")[- $A union B union C = {1, 2, 3, 4, 5, 6}$]#only("5-")[#text(fill:green)[- $A union B union C = {1, 2, 3, 4, 5, 6}$]]
#only("1")[#voiceover("Das ist leider falsch, schade...")]
#only("2")[#voiceover("Die Aussage dass A vereinigt B  die Menge bestehend aus 1, 2, 3, 4 und 5 ergibt ist korrekt, da die Vereinigung alle Elemente enthält, die in mindestens einer der beiden Mengen vorkommen.")]
#only("3")[#voiceover("Auch die Aussage, dass B vereinigt mit C die Menge 2, 3, 4, 5, 6 ergibt, ist korrekt, aus demselben Grund.")]
#only("4")[#voiceover("Die Aussage, dass A vereinigt mit C die Menge bestehend aus 1, 2, 3, 4, 5 und 6 ergibt ist falsch. Die Vereinigung von A und C enthält die Elemente 1, 2, 3, 4 und 6, aber nicht 5, da 5 weder in A noch in C vorkommt.")]
#only("5")[#voiceover("Schließlich ist die Aussage dass A vereinigt mit B vereinigt mit C die Menge bestehend aus 1, 2, 3, 4, 5 und 6 ergibt wieder korrekt, da die Vereinigung aller drei Mengen alle Elemente enthält, die in mindestens einer der Mengen vorkommen.")]
]