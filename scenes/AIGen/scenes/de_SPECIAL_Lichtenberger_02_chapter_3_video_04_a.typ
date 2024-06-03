#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Ballonphysik 🎈]
#v(40pt)
#only("1-")[#text(size: 20pt)[Der Ballon wird zu Beginn in Uster auf ein Volumen von 1550 m³ aufgeblasen. Dieses Volumen bleibt beim Aufsteigen konstant. Wie hoch kann der Ballon steigen?]]
#only("1")[
#voiceover("Großartig! Das ist die richtige Antwort. Lass uns sehen, wie wir dieses Problem Schritt für Schritt lösen können.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Gegebene Informationen 📝]
#v(40pt)
#only("1-")[
- Ballonvolumen: $V = 1550 "m"^3$
- Startort: Uster (464 m über dem Meeresspiegel)
- Volumen bleibt während des Aufstiegs konstant
]
#only("1")[
#voiceover("Zuerst sammeln wir die gegebenen Informationen. Der Ballon hat ein Volumen von 1550 Kubikmetern, er startet in Uster, das 464 Meter über dem Meeresspiegel liegt, und das Volumen bleibt während des Aufstiegs konstant.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Vorgehensweise 🧮]
#v(40pt)
#only("1-")[
- Verwende die barometrische Höhenformel: $p(h) = p_0 e^(-"mgh"/(k_"BT"))$
- Löse nach der Höhe $h$ auf
]
#only("1")[
#voiceover("Um die maximale Höhe zu finden, die der Ballon erreichen kann, verwenden wir die barometrische Höhenformel. Diese Formel stellt den Zusammenhang zwischen dem Druck in einer bestimmten Höhe und dem Druck auf Meereshöhe her. Wir lösen diese Gleichung nach der Höhe h auf.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 1: Barometrische Höhenformel 📏]
#v(40pt)
#only("1-")[
$p(h) = p_0 e^(-"mgh"/(k_"BT"))$
]
#only("2-")[
wo:
- $p(h)$: Druck in der Höhe $h$
- $p_0$: Druck auf Meereshöhe
- $m$: Masse der Luftmoleküle
- $g$: Erdbeschleunigung
- $k_B$: Boltzmann-Konstante
- $T$: Temperatur in Kelvin
]
#only("1")[
#voiceover("Die barometrische Höhenformel besagt, dass der Druck in einer Höhe h gleich dem Druck auf Meereshöhe mal e hoch minus m g h durch k B T ist.")
]
#only("2")[
#voiceover("Hierbei ist p von h der Druck in der Höhe h, p null der Druck auf Meereshöhe, m die Masse der Luftmoleküle, g die Erdbeschleunigung, k B die Boltzmann-Konstante und T die Temperatur in Kelvin.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 2: Nach der Höhe auflösen 📐]
#v(40pt)
#only("1-")[
$p(h) = p_0 e^(-"mgh"/(k_"BT"))$
]
#only("2-")[
$arrow p(h)/p_0 = e^(-"mgh"/(k_"BT"))$
]
#only("3-")[
$arrow ln(p(h)/p_0) = -"mgh"/(k_"BT")$
]
#only("4-")[
$arrow h = -(k_"BT"/("mg")) ln(p(h)/p_0)$
]
#only("1")[
#voiceover("Wir beginnen mit der barometrischen Höhenformel.")
]
#only("2")[
#voiceover("Zuerst teilen wir beide Seiten durch p null.")
]
#only("3")[
#voiceover("Dann nehmen wir den natürlichen Logarithmus beider Seiten.")
]
#only("4")[
#voiceover("Schließlich lösen wir nach h auf, indem wir beide Seiten mit negativ k B T durch m g multiplizieren.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 3: Druck berechnen 🌡️]
#v(40pt)
#only("1-")[
- Verwende das ideale Gasgesetz: $"pV" = "nRT"$
- Löse nach $p$ auf: $p = "nRT"/V$
]
#only("2-")[
wo:
- $n$: Anzahl der Mol Gase
- $R$: universelle Gaskonstante
- $T$: Temperatur in Kelvin
- $V$: Volumen des Ballons
]
#only("1")[
#voiceover("Um den Druck in der Starthöhe und der maximalen Höhe zu finden, verwenden wir das ideale Gasgesetz, p V gleich n R T. Wir lösen dies nach p auf und erhalten p gleich n R T durch V.")
]
#only("2")[
#voiceover("Hierbei ist n die Anzahl der Mol Gase, R die universelle Gaskonstante, T die Temperatur in Kelvin und V das Volumen des Ballons.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 4: Werte einsetzen 🔢]
#v(40pt)
#only("1-")[
$h = -(k_"BT"/("mg")) ln((n_("max")"RT"_("max")/V)/(n_0"RT"_0/V))$
]
#only("2-")[
$= -(k_"BT"/("mg")) ln(n_("max")T_("max")/(n_0T_0))$
]
#only("3-")[
Nehmen wir an:
- $T_("max") = T_0 = 288 "K"$ (konstante Temperatur)
- $n_("max") = n_0 (1 - "mgh"_("max")/(k_"BT"))$ (aus der barometrischen Höhenformel)
]
#only("4-")[
$arrow h_("max") = -(k_"BT"/("mg")) ln(1 - "mgh"_("max")/(k_"BT"))$
]
#only("1")[
#voiceover("Wir setzen die Ausdrücke für die Drücke in der Starthöhe und der maximalen Höhe in unsere Gleichung für h ein.")
]
#only("2")[
#voiceover("Das Volumen V kürzt sich heraus.")
]
#only("3")[
#voiceover("Um weiter zu vereinfachen, nehmen wir eine konstante Temperatur T an und verwenden die barometrische Höhenformel, um n in der maximalen Höhe in Bezug auf n in der Starthöhe auszudrücken.")
]
#only("4")[
#voiceover("Dies ergibt eine Gleichung für die maximale Höhe h max, die nur von bekannten Konstanten abhängt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Schritt 5: Numerisch lösen 🖥️]
#v(40pt)
#only("1-")[
$h_("max") = -("k_BT"/("mg")) ln(1 - "mgh"_("max")/(k_"BT"))$
]
#only("2-")[
Numerisch lösen (z.B. mit dem Newton-Verfahren) mit:
- $k_B = 1.38 dot 10^(-23) "J/K"$
- $T = 288 "K"$
- $m = 4.81 dot 10^(-26) "kg"$
- $g = 9.81 "m/s"^2$
]
#only("3-")[
$arrow h_("max") ≈ 2000 "m"$
]
#only("1")[
#voiceover("Diese Gleichung kann nicht analytisch nach h max gelöst werden. Wir müssen sie numerisch lösen, zum Beispiel mit dem Newton-Verfahren.")
]
#only("2")[
#voiceover("Wir setzen die Werte für die Boltzmann-Konstante k B, die Temperatur T, die Masse eines Luftmoleküls m und die Erdbeschleunigung g ein.")
]
#only("3")[
#voiceover("Durch numerische Lösung finden wir, dass die maximale Höhe, die der Ballon erreichen kann, ungefähr 2000 Meter beträgt.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Fazit 🎉]
#v(40pt)
#only("1-")[
Der Ballon, der auf ein Volumen von 1550 m³ aufgeblasen wurde und in Uster (464 m über dem Meeresspiegel) startet, kann auf eine maximale Höhe von ungefähr 2000 m steigen, vorausgesetzt, die Temperatur bleibt konstant und unter Verwendung der barometrischen Höhenformel und des idealen Gasgesetzes.
]
#only("1")[
#voiceover("Zusammenfassend kann der Ballon, der auf ein Volumen von 1550 Kubikmetern aufgeblasen wurde und in Uster startet, das 464 Meter über dem Meeresspiegel liegt, auf eine maximale Höhe von ungefähr 2000 Metern steigen. Dies setzt eine konstante Temperatur voraus und verwendet die barometrische Höhenformel und das ideale Gasgesetz.")
]
]