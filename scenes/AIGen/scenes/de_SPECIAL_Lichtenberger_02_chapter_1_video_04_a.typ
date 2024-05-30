#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Großartige Arbeit! Du hast den Überdruck für jeden Hahn korrekt berechnet. Lass uns die Lösung Schritt für Schritt durchgehen.")
]

#text(size: 30pt, weight: "bold")[Problemstellung]

#v(40pt)

#only("2-")[- Wasserbehälter in Höhe $h_0$]
#only("3-")[- Hähne in Höhen $h_1 = -35 "m"$, $h_2 = -10 "m"$, $h_3 = 3 "m"$ relativ zum Behälter]

#only("2")[#voiceover("Wir haben einen Wasserbehälter in einer bestimmten Höhe h null.")]
#only("3")[#voiceover("Die drei Hähne befinden sich in den Höhen h eins gleich minus fünfunddreißig Meter, h zwei gleich minus zehn Meter und h drei gleich drei Meter relativ zum Behälter.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckformel]

#v(40pt)

#only("1-")[$ P = P_0 - rho g h $]

#only("1")[#voiceover("Um den Überdruck an jedem Hahn zu berechnen, verwenden wir die hydrostatische Druckformel: P gleich P null minus rho g h, wobei P null der Druck am Behälter ist, rho die Dichte des Wassers, g die Erdbeschleunigung und h der Höhenunterschied zwischen dem Behälter und dem Hahn ist.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnungen]

#v(40pt)

#only("1-")[- $rho = 1000 "kg/m"^3$, $g = 9.81 "m/s"^2$]

#v(10pt)

#only("2-")[- Hahn 1: $P_1 = P_0 - (1000 "kg/m"^3)(9.81 "m/s"^2)(-35 "m") = P_0 + 343500 "Pa" = P_0 + 3.4 "bar"$ 🚰]

#v(10pt)

#only("3-")[- Hahn 2: $P_2 = P_0 - (1000 "kg/m"^3)(9.81 "m/s"^2)(-10 "m") = P_0 + 98100 "Pa" = P_0 + 1.0 "bar"$ 🚰]

#v(10pt)

#only("4-")[- Hahn 3: $P_3 = P_0 - (1000 "kg/m"^3)(9.81 "m/s"^2)(3 "m") = P_0 - 29430 "Pa" = P_0 - 0.3 "bar"$ 🚰]

#only("1")[#voiceover("Wir verwenden die Dichte des Wassers, rho gleich tausend Kilogramm pro Kubikmeter, und die Erdbeschleunigung, g gleich neun Komma acht eins Meter pro Quadratsekunde.")]

#only("2")[#voiceover("Für Hahn eins haben wir P eins gleich P null minus tausend mal neun Komma acht eins mal minus fünfunddreißig. Das vereinfacht sich zu P null plus dreihundertdreiundvierzigtausendfünfhundert Pascal oder P null plus drei Komma vier Bar.")]

#only("3")[#voiceover("Ähnlich erhalten wir für Hahn zwei P zwei gleich P null plus achtundneunzigtausendeinhundert Pascal oder P null plus ein Bar.")]

#only("4")[#voiceover("Schließlich haben wir für Hahn drei P drei gleich P null minus neunundzwanzigtausendvierhundertdreißig Pascal oder P null minus null Komma drei Bar.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Zusammenfassung]

#v(40pt)

#only("1-")[- Hahn 1 (35 m darunter): Überdruck = 3.4 bar]
#only("2-")[- Hahn 2 (10 m darunter): Überdruck = 1.0 bar]  
#only("3-")[- Hahn 3 (3 m darüber): Überdruck = -0.3 bar]

#only("1")[#voiceover("Zusammenfassend beträgt der Überdruck am Hahn eins, fünfunddreißig Meter unter dem Behälter, drei Komma vier Bar.")]

#only("2")[#voiceover("Der Überdruck am Hahn zwei, zehn Meter darunter, beträgt ein Bar.")]

#only("3")[#voiceover("Und der Überdruck am Hahn drei, drei Meter darüber, beträgt minus null Komma drei Bar.")]
]