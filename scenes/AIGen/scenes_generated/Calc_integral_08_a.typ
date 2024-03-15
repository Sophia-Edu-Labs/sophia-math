#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Hi hier ist Dua Lipa. Lass uns gemeinsam die Stammfunktion der Funktion f von x gleich drei x quadrat minus zwei x hoch drei plus eins durch x bestimmen.")
]
#text(size: 30pt, weight: "bold")[Stammfunktion]
#v(40pt)
#only("1-")[$f(x) = 3x^2 - 2x^3 + 1/x$]
#v(10pt)
#only("2")[#voiceover("Um eine Stammfunktion zu bestimmen,")]
#v(10pt)
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Integrationsregeln]]]
#v(10pt)
#only("4")[$F(x) = 3 dot 1/(2+1) x^(2+1)$]
#only("5")[$F(x) = x^(3)$]
#only("6")[$F(x) = x^(3)- 2 dot 1/(3+1) x^(3+1)$]
#only("7")[$F(x) = x^(3)- 1/2 x^(4)$]
#only("8")[$F(x) = x^(3)- 1/2 x^(4) + ln|x|$]
#only("9-")[$F(x) = x^(3)- 1/2 x^(4) + ln|x| + C$]

#only("3")[#voiceover("integrieren wir die Summanden einzeln nach x. Wir beginnen mit dem Term drei x quadrat. Das ist eine Potenz, also ")]
#only("4")[#voiceover("erhöhen wir den Exponenten um eins und teilen durch die neue Potenz. Das ergibt drei mal eins durch zwei plus eins mal x hoch zwei plus eins,")]
#only("5")[#voiceover("also  x hoch drei. Dann integrieren wir minus zwei x hoch drei.")]
#only("6")[#voiceover("Das ergibt minus zwei mal eins durch drei plus eins mal x hoch drei plus eins.")]
#only("7")[#voiceover("also  minus ein halb x hoch vier. Zuletzt integrieren wir den dritten Term, eins durch x.")]
#only("8")[#voiceover("Das ergibt den natürlichen Logarithmus von x.")]
#only("9")[#voiceover("Die Stammfunktion der gegebenen Funktion f von x ist also x hoch drei minus ein halb x hoch vier plus l n x  plus C. Viel erfolg beim Lernen, machts gut und folgt uns hier auf TikTok für mehr Mathevideos.")]
]