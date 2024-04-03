#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Mengenbeziehungen]
#v(40pt)
- $A = {2, 4, 6, 8}$
- $B = {1, 2, 3, 4, 5, 6}$
- $C = {4, 6, 8, 10, 12}$
#v(40pt)
Welche Aussage trifft #text(weight: "bold")[zu]?
#v(40pt)
#only("-1")[- $A subset.eq C$]#only("2-")[#text(fill:red)[- $A subset.eq C$]]
#v(10pt)
#only("-2")[- $B subset.not A$]#only("3-")[#text(fill:green)[- $B subset.not A$]]
#v(10pt)
#only("-3")[- $C subset B$]#only("4-")[#text(fill:red)[- $C subset B$]]
#v(10pt)
#only("-4")[- $A subset B$]#only("5-")[#text(fill:red)[- $A subset B$]]
#only("1")[#voiceover("Das stimmt nicht.")]
#only("2")[#voiceover("A ist keine Teilmenge von C, da alle Elemente von A, also 2, 4, 6 und 8, auch in C enthalten sind.")]
#only("3")[#voiceover("Die Aussage, dass B keine echte Teilmenge von A ist, trifft zu, da B Elemente enthält, die nicht in A sind, wie zum Beispiel 1, 3 und 5.")]
#only("4")[#voiceover("C ist keine echte Teilmenge von B, da C Elemente wie 10 und 12 enthält, die nicht in B vorkommen.")]
#only("5")[#voiceover("Und auch A ist keine Teilmenge von B, da die 8 in A, aber nicht in B enthalten ist.")]
]