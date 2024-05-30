#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[

#only("1")[
#voiceover("Leider nicht ganz richtig. Lass uns das Schritt für Schritt durchgehen.")
]

#text(size: 30pt, weight: "bold")[Problemstellung]

#v(40pt)

#only("2-")[- Wasserbehälter mit drei Wasserhähnen]
// Die Problemstellung wird ab Folie 2 gezeigt

#only("3-")[- Wasserhähne befinden sich auf: 
  - 35 m unterhalb 
  - 10 m unterhalb
  - 3 m oberhalb]
// Die Positionen der Wasserhähne werden ab Folie 3 gezeigt

#only("2")[
#voiceover("Wir haben einen Wasserbehälter mit drei Wasserhähnen, die sich in unterschiedlichen Höhen relativ zum Behälter befinden.")
]

#only("3")[
#voiceover("Der erste Wasserhahn befindet sich 35 Meter unterhalb des Behälters, der zweite 10 Meter unterhalb und der dritte 3 Meter oberhalb.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Formel]

#v(40pt)

#only("1-")[$ P = P_("Behälter") - rho dot g dot h $]
// Die Formel wird ab Folie 1 gezeigt

#only("1")[
#voiceover("Um den Überdruck an jedem Wasserhahn zu berechnen, verwenden wir die Formel P gleich P Behälter minus rho mal g mal h, wobei rho die Dichte des Wassers ist, g die Erdbeschleunigung und h der Höhenunterschied zwischen dem Behälter und dem Wasserhahn.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Lösung]

#v(40pt)

#only("1-")[- Wasserhahn 1 (35 m unterhalb): ]

#only("2-")[$ P_1 = P_("Behälter") - 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot (-35 "m") $]

#only("3-")[$ P_1 = P_("Behälter") + 343350 "Pa" = P_("Behälter") + 3.4 "bar" $]
// Die Lösung für Wasserhahn 1 wird schrittweise von Folie 1 bis 3 aufgebaut

#v(20pt)

#only("4-")[- Wasserhahn 2 (10 m unterhalb):]

#only("5-")[$ P_2 = P_("Behälter") - 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot (-10 "m") $]

#only("6-")[$ P_2 = P_("Behälter") + 98100 "Pa" = P_("Behälter") + 1.0 "bar" $]
// Die Lösung für Wasserhahn 2 wird schrittweise von Folie 4 bis 6 aufgebaut

#v(20pt)

#only("7-")[- Wasserhahn 3 (3 m oberhalb):]

#only("8-")[$ P_3 = P_("Behälter") - 1000 "kg/m"^3 dot 9.81 "m/s"^2 dot (3 "m") $]

#only("9-")[$ P_3 = P_("Behälter") - 29430 "Pa" = P_("Behälter") - 0.3 "bar" $]
// Die Lösung für Wasserhahn 3 wird schrittweise von Folie 7 bis 9 aufgebaut

#only("1")[#voiceover("Lass uns mit dem ersten Wasserhahn beginnen, der sich 35 Meter unterhalb des Behälters befindet.")]

#only("2")[#voiceover("Wir setzen die Werte in die Formel ein. Die Dichte des Wassers beträgt 1000 Kilogramm pro Kubikmeter, die Erdbeschleunigung 9,81 Meter pro Quadratsekunde und die Höhe ist negativ 35 Meter, da sich der Wasserhahn unterhalb des Behälters befindet.")]

#only("3")[#voiceover("Vereinfacht ergibt sich, dass der Überdruck am Wasserhahn 1 der Behälterdruck plus 343.350 Pascal oder 3,4 bar ist.")]

#only("4")[#voiceover("Weiter geht es mit Wasserhahn 2, der sich 10 Meter unterhalb des Behälters befindet.")]

#only("5")[#voiceover("Auch hier setzen wir die Werte in die Formel ein, wobei die Höhe diesmal negativ 10 Meter beträgt.")]

#only("6")[#voiceover("Nach der Vereinfachung ergibt sich, dass der Überdruck am Wasserhahn 2 der Behälterdruck plus 98.100 Pascal oder 1,0 bar ist.")]

#only("7")[#voiceover("Schließlich kommen wir zu Wasserhahn 3, der sich 3 Meter oberhalb des Behälters befindet.")]

#only("8")[#voiceover("Wir setzen die Werte ein und beachten, dass die Höhe diesmal positiv 3 Meter beträgt, da sich der Wasserhahn oberhalb des Behälters befindet.")]

#only("9")[#voiceover("Vereinfacht ergibt sich, dass der Überdruck am Wasserhahn 3 der Behälterdruck minus 29.430 Pascal oder minus 0,3 bar ist.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Visualisierung 📊]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

heights = [-35, -10, 3]
pressures = [3.4, 1.0, -0.3]

plt.figure(figsize=(8, 6))
plt.plot(heights, pressures, 'bo-')
plt.xlabel('Höhe relativ zum Behälter (m)')
plt.ylabel('Überdruck (bar)')
plt.title('Überdruck bei verschiedenen Wasserhahnhöhen')
plt.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
// Das Diagramm, das den Überdruck bei verschiedenen Wasserhahnhöhen visualisiert, wird ab Folie 1 gezeigt

#only("1")[
#voiceover("Hier ist ein Diagramm, das den Überdruck bei den verschiedenen Wasserhahnhöhen visualisiert. Die x-Achse zeigt die Höhe relativ zum Behälter in Metern und die y-Achse zeigt den Überdruck in bar. Wir sehen, dass der Überdruck linear abnimmt, wenn die Höhe zunimmt.")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Der Überdruck hängt vom Höhenunterschied ab 📏]

#only("2-")[- Niedrigere Wasserhähne haben höheren Überdruck ⬇️]

#only("3-")[- Wasserhähne oberhalb des Behälters haben negativen Überdruck ⬆️]

#only("1")[
#voiceover("Zusammenfassend hängt der Überdruck an jedem Wasserhahn vom Höhenunterschied zwischen dem Wasserhahn und dem Behälter ab.")
]

#only("2")[
#voiceover("Wasserhähne, die sich unterhalb des Behälters befinden, haben einen positiven Überdruck, wobei niedrigere Wasserhähne einen höheren Überdruck haben.")
]

#only("3")[
#voiceover("Wasserhähne, die sich oberhalb des Behälters befinden, haben einen negativen Überdruck. Großartige Arbeit bei der Lösung dieses Problems!")
]

]