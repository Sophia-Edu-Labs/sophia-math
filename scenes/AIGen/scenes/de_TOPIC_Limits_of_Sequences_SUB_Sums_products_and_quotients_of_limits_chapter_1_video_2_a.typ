#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwerte von Summen]
#v(40pt)
Wenn $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$, dann ist $lim_(n -> infinity) (a_n + b_n)$ \_\_\_\_\_. 
#v(40pt)
// Von Anfang bis Abschnitt eins ist die Option schwarz. Ab Abschnitt 2 bis zum Ende wird sie dann grün, weil sie korrekt ist.
#only("-1")[a) $L + M$]#only("2-")[#text(fill:green)[a) $L + M$]]
#v(10pt)  
// Von Anfang bis Abschnitt zwei ist die Option schwarz. Ab Abschnitt 3 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-2")[b) $L - M$]#only("3-")[#text(fill:red)[b) $L - M$]]
#v(10pt)
// Von Anfang bis Abschnitt drei ist die Option schwarz. Ab Abschnitt 4 bis zum Ende wird sie dann rot, weil sie falsch ist.  
#only("-3")[c) $L M$]#only("4-")[#text(fill:red)[c) $L M$]]
#v(10pt)
// Von Anfang bis Abschnitt vier ist die Option schwarz. Ab Abschnitt 5 bis zum Ende wird sie dann rot, weil sie falsch ist.
#only("-4")[d) $L / M$]#only("5-")[#text(fill:red)[d) $L / M$]]

#only("1")[#voiceover("Großartig! Das ist die richtige Antwort.")]
#only("2")[#voiceover("Option a) $L + M$ ist tatsächlich korrekt. Wenn wir die Grenzwerte zweier Folgen addieren, erhalten wir den Grenzwert ihrer Summe.")]
#only("3")[#voiceover("Option b) $L - M$ ist falsch. Wir subtrahieren hier nicht die Grenzwerte.")]  
#only("4")[#voiceover("Option c) $L M$ ist ebenfalls falsch. Wir multiplizieren hier nicht die Grenzwerte.")]
#only("5")[#voiceover("Und Option d) $L / M$ ist auch falsch. Wir teilen hier nicht die Grenzwerte.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Schritt-für-Schritt-Lösung]
#v(40pt)  
#only("1-")[Gegeben: $lim_(n -> infinity) a_n = L$ und $lim_(n -> infinity) b_n = M$]
#v(20pt)
#only("2-")[Schritt 1: Schreibe den Grenzwert der Summe auf.]
#v(10pt)  
#only("3-")[$lim_(n -> infinity) (a_n + b_n)$]
#v(20pt)
#only("4-")[Schritt 2: Wende die Grenzwertsummeneigenschaft an.]
#v(10pt)
#only("5-")[$lim_(n -> infinity) a_n + lim_(n -> infinity) b_n$]
#v(20pt)  
#only("6-")[Schritt 3: Setze die gegebenen Grenzwerte ein.]
#v(10pt)
#only("7-")[$L + M$]
#v(20pt)
#only("8-")[Daher ist $lim_(n -> infinity) (a_n + b_n) = L + M$. ✅]

#only("1")[#voiceover("Lass uns die Lösung Schritt für Schritt durchgehen. Wir wissen, dass der Grenzwert der Folge $a_n$ gleich $L$ und der Grenzwert der Folge $b_n$ gleich $M$ ist.")]
#only("2")[#voiceover("In Schritt 1 schreiben wir den Grenzwert auf, den wir finden wollen, nämlich den Grenzwert der Summe von $a_n$ und $b_n$, wenn $n$ gegen unendlich geht.")]  
#only("3")[#voiceover("Dies wird geschrieben als der Grenzwert, wenn $n$ gegen unendlich geht, von $a_n$ plus $b_n$.")]
#only("4")[#voiceover("In Schritt 2 wenden wir die Grenzwertsummeneigenschaft an. Diese Eigenschaft besagt, dass der Grenzwert einer Summe gleich der Summe der Grenzwerte ist.")]
#only("5")[#voiceover("Daher können wir dies als den Grenzwert von $a_n$ schreiben, wenn $n$ gegen unendlich geht, plus den Grenzwert von $b_n$, wenn $n$ gegen unendlich geht.")]
#only("6")[#voiceover("In Schritt 3 setzen wir die gegebenen Grenzwerte ein. Wir wissen, dass der Grenzwert von $a_n$ gleich $L$ und der Grenzwert von $b_n$ gleich $M$ ist.")]  
#only("7")[#voiceover("Daher ersetzen wir die Grenzwerte durch $L$ und $M$, was uns $L$ plus $M$ ergibt.")]
#only("8")[#voiceover("Daher können wir schließen, dass der Grenzwert von $a_n$ plus $b_n$, wenn $n$ gegen unendlich geht, gleich $L$ plus $M$ ist.")]
]