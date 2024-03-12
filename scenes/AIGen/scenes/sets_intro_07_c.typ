#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Mengenbeziehungen]
#v(40pt)
- $X = {2, 4, 6, 8}$
- $Y = {1, 2, 3, 4, 5, 6}$
- $Z = {4, 6, 8, 10, 12}$
#v(40pt)
Welche Aussage trifft #text(weight: "bold")[zu]?
#v(40pt)
#only("-1")[- $X subset.eq Z$]#only("2-")[#text(fill:red)[- $X subset.eq Z$]]
#v(10pt)
#only("-2")[- $Y subset.not X$]#only("3-")[#text(fill:green)[- $Y subset.not X$]]
#v(10pt)
#only("-3")[- $Z subset Y$]#only("4-")[#text(fill:red)[- $Z subset Y$]]
#v(10pt)
#only("-4")[- $X subset Y$]#only("5-")[#text(fill:red)[- $X subset Y$]]
#only("1")[#voiceover("Das stimmt nicht.")]
#only("2")[#voiceover("X ist keine Teilmenge von Z, da alle Elemente von X, also 2, 4, 6 und 8, auch in Z enthalten sind.")]
#only("3")[#voiceover("Die Aussage, dass üpsilon keine echte Teilmenge von X ist, trifft zu, da üpsilon Elemente enthält, die nicht in X sind, wie zum Beispiel 1, 3 und 5.")]
#only("4")[#voiceover("Z ist keine echte Teilmenge von üpsilon, da Z Elemente wie 10 und 12 enthält, die nicht in üpsilon vorkommen.")]
#only("5")[#voiceover("Und auch X ist keine Teilmenge von üpsilon, da die 8 in X, aber nicht in üpsilon enthalten ist.")]
]