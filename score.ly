\version "2.16.2"

\header {
  title = "Nammies Four Hands"
  composer = \markup {
    \right-column {
    "Jordan Eldredge"
    "(after tune by Tom Hollow)"
    }
  }
  dedication = "For Chelsea Hollow on our wedding day"
  tagline = "May we always enjoy playing together"
}
primo_upper = \relative c'' {
  \clef treble
  \key g \major
  \time 2/2
  \tempo "Largo"
  d4 d b2 | d8 e d c b2 | d2 e4 b | c a2. | \break
  c4 c a2 | c8 d c b a2 | d2 c4 a | b g2 g8 g | \break
  r4 e'4 c2 | r4 ees8 d c2 | d8 b c cis d b c cis | \break
  r8 d4 f e d8 | \times 2/3 { r8 d c } \times 2/3 { r c b } \times 2/3 { r b a } \times 2/3 { r a g } |
  << { fis1\fermata } \\ { r2 e\fermata } >>
  \bar ":|"
}

prino_lower = \relative c' {
  \clef treble
  \key g \major
  \time 2/2
  fis2 g4 e | fis2 g4 e | fis2 g4 e | e1 |
  e2 fis4 d | e2 fis4 d | e2 fis4 ees | d1 |
  r4 g e2 | r4 g4 ees2 | R1 |
  R1 | R1 | r4 c2.\fermata |

}

secondo_upper = \relative c' {
  \clef bass
  \key g \major
  \time 2/2
  \tempo "Largo"
  b8 d a d g,2 | b8 c b fis g2 | b2 c8 b a g | g4 <fis c'>2 d'8 d | \break
  a c g c fis,2 | a8 b a e fis2 | fis a4 c | b1 | \break
  r4 c g c8 g | r4 c4 g a | d8 b c cis d b c cis | \break
  d4 <f gis,> <e ais,> <d b> | c <b d> <a ees'> <g e'> | <a d>1\fermata |
  \bar ":|"

}

secondo_lower = \relative c {
  \clef bass
  \key g \major
  \time 2/2
  g4 d' d, d' | g,4 d' d, d' | g, d' d, a' | d a fis a |
  d a d, fis | d' a d, fis | d' a d, fis | g2 g, |
  c1 | c' | g2 f |
  e1 | R1 | r4 d' d,2\fermata
}

\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Chelsea  "
    \new Staff = "upper" \primo_upper
    \new Staff = "lower" \prino_lower
  >>
  \layout { }
}
\score {
  \new PianoStaff <<
    \set PianoStaff.instrumentName = #"Jordan  "
    \new Staff = "upper" \secondo_upper
    \new Staff = "lower" \secondo_lower
  >>
  \layout { }
}
\score {
  \new PianoStaff <<
    \new Staff = "upper" \primo_upper
    \new Staff = "lower" \prino_lower
    \new Staff = "upper" \secondo_upper
    \new Staff = "lower" \secondo_lower
  >>
  \midi {
    \tempo 2 = 45
  }
}
