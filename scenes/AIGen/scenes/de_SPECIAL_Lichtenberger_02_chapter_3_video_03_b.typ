#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Ballonstart 🎈]
  #v(40pt)
  #only("1-")[- Minimales Volumen für den Start?]
  #only("2-")[- Gegeben: 
    - Ort: Uster (464 m über dem Meeresspiegel)
    - Volumen der Gondel und Passagiere vernachlässigen
  ]
  #only("1")[
    #voiceover("Leider ist das nicht korrekt. Lass uns gemeinsam Schritt für Schritt durchgehen, wie man das minimale Volumen berechnet.")
  ]
  #only("2")[
    #voiceover("Um das minimale Volumen zu finden, müssen wir den Ort berücksichtigen, der in diesem Fall Uster auf 464 Metern über dem Meeresspiegel ist. Wir können auch das Volumen der Gondel und der Passagiere für diese Berechnung vernachlässigen.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 1: Auftriebsbedingung]
  #v(40pt)
  #only("1-")[Für den Start: $F_("Auftrieb") > F_("Schwerkraft")$]
  #v(20pt)
  #only("2-")[$(rho_("Luft") - rho_("erhitztes Gas")) dot g dot V > m_("Ballon") dot g$]
  #only("1")[
    #voiceover("Zuerst muss für den Ballonstart die Auftriebskraft größer sein als die Schwerkraft auf den Ballon.")
  ]
  #only("2")[
    #voiceover("Wir können dies mathematisch ausdrücken als die Dichteunterschied zwischen Luft und dem erhitzten Gas im Ballon, multipliziert mit der Erdbeschleunigung und dem Volumen, muss größer sein als die Masse des Ballons multipliziert mit der Erdbeschleunigung.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 2: Volumen berechnen]
  #v(40pt)
  #only("1-")[$(rho_("Luft") - rho_("erhitztes Gas")) dot V > m_("Ballon")$]
  #v(20pt)
  #only("2-")[$V > (m_("Ballon"))/(rho_("Luft") - rho_("erhitztes Gas"))$]
  #only("1")[
    #voiceover("Wir können dies vereinfachen, indem wir beide Seiten durch die Erdbeschleunigung teilen.")
  ]
  #only("2")[
    #voiceover("Um das minimale Volumen zu finden, lösen wir die Ungleichung nach V auf. Das minimale Volumen muss größer sein als die Masse des Ballons geteilt durch den Dichteunterschied zwischen Luft und dem erhitzten Gas.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 3: Dichte der Luft berechnen]
  #v(40pt)
  #only("1-")[- Die Dichte der Luft hängt von der Höhe ab]
  #v(20pt)
  #only("2-")[- Auf Meereshöhe (0 m): $rho_("Luft, 0") = 1.225 "kg"/m^3$]
  #v(20pt)
  #only("3-")[- In der Höhe $h$: $rho_("Luft, h") = rho_("Luft, 0") dot e^(-0.00012 dot h)$]
  #v(20pt)
  #only("4-")[- Für Uster (464 m): $rho_("Luft, Uster") = 1.225 "kg"/m^3 dot e^(-0.00012 dot 464) = 1.17 "kg"/m^3$]
  #only("1")[
    #voiceover("Um weiterzumachen, müssen wir die Dichte der Luft kennen. Diese hängt von der Höhe ab.")
  ]
  #only("2")[
    #voiceover("Auf Meereshöhe, also bei 0 Metern Höhe, beträgt die Dichte der Luft etwa 1.225 Kilogramm pro Kubikmeter.")
  ]
  #only("3")[
    #voiceover("Für jede Höhe h kann die Dichte der Luft mit dieser Exponentialformel berechnet werden, wobei rho Luft 0 die Dichte auf Meereshöhe ist, e die mathematische Konstante ist und der Exponent negativ 0.00012 mal die Höhe h beträgt.")
  ]
  #only("4")[
    #voiceover("Setzt man die Höhe von Uster, die 464 Meter beträgt, ein, erhält man eine Dichte von etwa 1.17 Kilogramm pro Kubikmeter.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Schritt 4: Minimales Volumen berechnen]
  #v(40pt)
  #only("1-")[- Masse des Ballons: $m_("Ballon") = 800 "kg"$]
  #v(20pt)
  #only("2-")[- Dichte des erhitzten Gases: $rho_("erhitztes Gas") = 0.17 "kg"/m^3$]
  #v(20pt)
  #only("3-")[$V > (800 "kg")/(1.17 "kg"/m^3 - 0.17 "kg"/m^3)$]
  #v(20pt)
  #only("4-")[$V > 800 m^3$]
  #only("1")[
    #voiceover("Nehmen wir nun an, die Masse des Ballons beträgt 800 Kilogramm.")
  ]
  #only("2")[
    #voiceover("Und die Dichte des erhitzten Gases im Ballon beträgt 0.17 Kilogramm pro Kubikmeter.")
  ]
  #only("3")[
    #voiceover("Wir können diese Werte nun in unsere Ungleichung einsetzen. Das minimale Volumen muss größer sein als 800 Kilogramm geteilt durch den Dichteunterschied zwischen der Luft in Uster und dem erhitzten Gas.")
  ]
  #only("4")[
    #voiceover("Berechnet man dies, stellt man fest, dass das minimale Volumen für den Ballonstart in Uster größer als 800 Kubikmeter sein muss.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fazit]
  #v(40pt)
  #only("1-")[- Minimales Volumen für den Start in Uster: $V > 800 m^3$ 📏]
  #v(20pt)
  #only("2-")[Schlüsselfaktoren:
    - Die Dichte der Luft nimmt mit der Höhe ab 🌬️
    - Die Auftriebskraft muss die Schwerkraft übersteigen 🪁
  ]
  #only("1")[
    #voiceover("Zusammenfassend muss das Volumen des Ballons in Uster, das auf einer Höhe von 464 Metern liegt, größer als 800 Kubikmeter sein, damit er abheben kann, vorausgesetzt, wir vernachlässigen das Volumen der Gondel und der Passagiere.")
  ]
  #only("2")[
    #voiceover("Die Schlüsselfaktoren bei dieser Berechnung waren die Abnahme der Luftdichte mit der Höhe und die Anforderung, dass die Auftriebskraft die Schwerkraft übersteigen muss, damit der Start erfolgen kann.")
  ]
]