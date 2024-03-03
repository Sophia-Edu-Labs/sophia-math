#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

```markdown
#slide()[

#only("1")[ 
  #voiceover("Genau richtig, super Arbeit! Nun gehen wir den nächsten Schritt und lösen das Integral.") 
] 
Berechne eine Stammfunktion von 
#v(40pt) 
#only("2-")[#text()[$ f(x) = 2xe^(x^2) + 4x $]] 
#only("2")[ 
  #voiceover("der Funktion f von x gleich zwei mal x mal e hoch x Quadrat plus vier mal x.") 
] 
] 

#slide()[ 
#only("1")[ 
  #voiceover("Um eine Stammfunktion zu finden, nutzen wir die Integrationstechniken für Exponential- und lineare Funktionen.") 
] 
#only("2")[ 
  #voiceover("Beginnen wir mit dem Prozess!") 
] 
#text(size: 30pt, weight: "bold")[Ansatz] 
#v(40pt) 
    #only("1-")[- Integration durch Substitution] 
    #only("2-")[- Lineare Integration] 
] 

#slide()[ 
#text(size: 30pt, weight: "bold")[Lösungsschritte] 
#v(40pt) 
#only("1-")[$f(x) = 2x \cdot e^{x^2} + 4x$] 
#only("1")[#voiceover("Wir beginnen mit der Funktion f von x gleich zwei mal x multipliziert mit e hoch x Quadrat plus vier mal x.")] 
#v(10pt) 
#only("2")[#voiceover("Für den Term $2x \cdot e^{x^2}$ verwenden wir die Substitutionsmethode. Wir setzen $u = x^2$, folglich ist $du = 2x \cdot dx$.")] 
#v(10pt) 
#only("3-")[#align(center)[#text(fill:aqua)[⇓ Anwendung der Substitution]]] 
#only("3")[#voiceover("Durch die Substitution wird unser Integral umgewandelt in das Integral von $e^u du$")] 
#v(10pt) 
#only("4-")[$\int e^u du = e^u + C_1$]
#only("4")[#voiceover("Das Integral von $e^u$ bezüglich $u$ ist $e^u$ plus eine Integrationskonstante, nennen wir sie $C_1$.")] 
#v(10pt)  
#only("5-")[#align(center)[⇓ Rücksubstitution]]
#only("5")[#voiceover("Wenn wir die Rücksubstitution durchführen, erhalten wir als Teil des Integrals $e^{x^2} + C_1$.")] 
#v(10pt)  
#only("6")[#voiceover("Für den Term $4x$ verwenden wir direkte Integration.")] 
#only("6-")[$\int 4x dx = 2x^2 + C_2$]
#only("7")[#voiceover("Das Integral von vier mal x ist zwei mal x Quadrat plus eine weitere Integrationskonstante, nennen wir sie $C_2$.")] 
#v(10pt)  
#only("8-")[$F(x) = e^{x^2} + C_1 + 2x^2 + C_2$] #only("9-")[$ =e^{x^2} + 2x^2 + C$] 
#only("8")[#voiceover("Wenn wir alle Teile zusammenfügen, erhalten wir als Ergebnis $F(x) equals e hoch x Quadrat plus zwei mal x Quadrat plus eine allgemeine Integrationskonstante, C.\")] 
] 
```

Diese Slideshow führt durch den Prozess der Integration der gegebenen Funktion $f(x) = 2xe^{x^2} + 4x$ Schritt für Schritt, beginnend mit einer Einführung, Übersicht der angewandten Methoden und endet mit der detaillierten Lösung. Dabei wird auf die Substitutionsmethode für den ersten Term und direkte Integration für den linearen Term eingegangen, um die Integration durchzuführen und das Ergebnis zu formen.