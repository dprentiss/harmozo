\header {
    title = "NUN DANKET"
}

global = {
    \key f \major
    \time 4/4
}

sopranoMusic = \relative c' {
    \partial 4 c' c c d d c2. c4 bes a g a \time 3/4 \omit Score.TimeSignature g2 f4 \break 
    \time 1/4 c' \time 4/4 c c d d c2. c4 bes a g a \time 3/4 g2 f4 \break
    \time 1/4 g \time 4/4 g g a a g2. g4 a8 b c4 d b \time 3/4 c2. \break
    \time 1/4 c4 \time 4/4 d c bes a bes2. a4 g f f e \time 3/4 f2. \bar "|."
}

altoMusic = \relative c' {
    f4 g f f d8 e f2. f8 e d e f4 e f f( e) f 
    f4 g f f f f2. f4 f8 e f4 f8 e d cis d4( c8 bes) a4
    c4 d e8 d c4 f e2. g4 f g f e e2.
    e4 d d d fis g2. f8 e d4 a8 bes c4 c c2.
}

tenorMusic = \relative c' {
    a4 g a bes f8 g a2. a4 bes c c c bes2 a4 
    a4 g a bes bes a2. a4 bes c g e g8( f e4) f
    e4 g c8 b a4 c c2. c4 c c c8 b a gis a2.
    c4 a g8 a bes4 d4 d2. c4 bes f8 g a4 g a2.
}

bassMusic = \relative c {
    f4 e f bes bes, f'2. f4 g a8 bes c4 f, c2 f,4
    
}

verseOne = \lyricmode {
    \set stanza = #"1. "
}

verseTwo = \lyricmode {
    \set stanza = #"2. "
}

\score{
    \new ChoirStaff <<
        \new Staff = "women" <<
            \new Voice = "sopranos" { \voiceOne << \global \sopranoMusic >> }
            \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
        >>
        \new Staff = "men" <<
            \clef bass
            \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
            \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
        >>
    >>

    \layout{
        indent = #0
    }
    \midi{}
}
