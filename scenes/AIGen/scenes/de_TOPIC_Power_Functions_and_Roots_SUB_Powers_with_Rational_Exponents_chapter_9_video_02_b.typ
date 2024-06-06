#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachung von $(a^(m/n))^p$]
#v(40pt)
Um $(a^(m/n))^p$ zu vereinfachen, verwenden wir die Regel \_\_\_\_\_.
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann rot, weil sie falsch ist. 
#only("-1")[a) $(a^(m/n))^p = a^(m n p)$]#only("2-")[#text(fill:red)[a) $(a^(m/n))^p = a^(m n p)$]]
#v(10pt)
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann grün, weil sie richtig ist.
#only("-2")[b) $(a^(m/n))^p = a^((m p)/n)$]#only("3-")[#text(fill:green)[b) $(a^(m/n))^p = a^((m p)/n)$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-3")[c) $(a^(m/n))^p = a^(m/(n p))$]#only("4-")[#text(fill:red)[c) $(a^(m/n))^p = a^(m/(n p))$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $(a^(m/n))^p = a^(n/(m p))$]#only("5-")[#text(fill:red)[d) $(a^(m/n))^p = a^(n/(m p))$]]
#only("1")[#voiceover("Fantastisch, Du hast es richtig gemacht!")]
#only("2")[#voiceover("Option a ist falsch. Es sollte mp über n im Exponenten stehen, nicht mnp.")]
#only("3")[#voiceover("Option b, a hoch mp über n, ist tatsächlich die richtige Regel zur Vereinfachung von a hoch m über n, alles hoch p.")]
#only("4")[#voiceover("Option c ist falsch. Es sollte mp über n im Exponenten stehen, nicht m über np.")]
#only("5")[#voiceover("Und Option d ist auch falsch. Es sollte mp über n im Exponenten stehen, nicht n über mp.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)
#only("1-")[1. Beginne mit $(a^(m/n))^p$]
#v(20pt)
#only("2-")[2. Wende die Regel an: $(a^(m/n))^p = a^((m p)/n)$]
#v(20pt)
#only("3-")[3. Vereinfache den Exponenten: $m p/n$]
#v(20pt)
#only("4-")[4. Die vereinfachte Form ist $a^((m p)/n)$]
#only("1")[#voiceover("Lass uns die Schritt-für-Schritt-Lösung durchgehen.")]
#only("2")[#voiceover("Wir wenden die Regel an, dass a hoch m über n, alles hoch p, gleich a hoch mp über n ist.")]
#only("3")[#voiceover("Wir vereinfachen den Exponenten, indem wir m und p im Zähler multiplizieren und n im Nenner behalten.")]
#only("4")[#voiceover("Und das war's! Die vereinfachte Form ist a hoch mp über n. Merke Dir diese Regel zur Vereinfachung von Ausdrücken mit rationalen Exponenten, die potenziert werden.")]
]