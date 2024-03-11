#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Teilmengen]
#v(40pt)
- $A = {1, 2, 3}$
- $B = {1, 2, 3, 4}$
- $C = {3, 4, 5}$
#v(40pt)
Welche Aussage ist #text(weight: "bold")[falsch]?
#v(40pt)
#only("-1")[- $A subset.eq B$]#only("2-")[#text(fill:green)[- $A subset.eq B$]]
#v(10pt)
#only("6-")[- $B subset.not A$]
#v(10pt)
#only("7-")[- $A subset B$]
#v(10pt)
#only("8-")[- $C subset B$]

#only("1")[#voiceover("Betrachte die folgenden drei Mengen: A, bestehend aus den Elementen 1, 2 und 3,")]

]
