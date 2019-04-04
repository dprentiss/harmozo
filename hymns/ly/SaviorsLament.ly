\version "2.18.2"
\paper {
  #(set-paper-size "letter")
}
\header {
  title = "The Savior's Lament"
  composer = "Michael Denham"
  tagline = ""
}

global = {
  \key ees \major
  \numericTimeSignature
  \time 4/4
  \override BreathingSign.Y-offset = #2.6
  \override BreathingSign.text =
  \markup { \musicglyph #"scripts.tickmark" }
}

sopranoMusic = \relative c'' {
  s1 s1 s1 s1 s1 s1 s1 s1 s1 s1
  b2\rest b8\rest g^"Tutti" ees' b
  c2 ~ c8\noBeam g c g
                                % 13
  bes8. aes16 aes4 ~ aes8\noBeam f g aes
  g2 ~ g8 f ees f
  <ees ~ g ~>2 <ees g>8
  g8 ees' b
                                % 16
  c2 ~ c8\noBeam g c g
  <bes f>8. <aes f>16 <aes~ f~>4 <aes f>8 f g aes
  g2 ~ g8 f ees d
                                % 19 first ending
  c2.\fermata \skip 4
  bes'4. bes8 bes4 c8. aes16
  aes4 g2 \skip 8 bes8
  bes4 d8 c bes4. aes8
  g2~ g8 g g d'
  ees4 ees8. ees16 ees4 ees8 ees
                                % 25
  ees4 c4~ c8 c bes aes
  g2~ g8 g g aes
  g2 \skip8 g8 ees' b
                                % 28 second ending
  c,2.\fermata bes'4^"(ten.)"
  bes4. bes8 bes4 c8. aes16
  aes4 bes2 \skip 8 bes8
                                % 31
  bes4 d8 c8 bes4. aes8
  g2~ g8 g g d'
  ees4 ees8. ees16 ees4 ees4
                                % 34
  ees4 c4~c8 c bes aes
  bes2~ bes8 d8 c8 bes8
  g2~ g8 g e' b
                                % 37
  c2~ c8 g8 c g
  bes8. aes16 aes4~ aes8 f8 g aes
  g2~ g8 f ees f
                                % 40
  g2~ g8 g ees' b
  c2~ c8 g c g
  bes8. aes16 aes4~ aes8 f g aes
                                % 43
  g2~ g8 f ees d
  c2 \skip 8 f8 ees' b
  c2~ c8 g c g
                                % 46
  bes8. aes16 aes4~ aes8 f8 g aes
  g2~ g8 f ees f
  g2~ g8 g ees' b
                                % 49
  c2~ c8 g c g
  bes8. aes16 aes4~ aes8 f g aes
  g2~ g8 g ees' b
                                % 52
  c4
  \skip 4 \skip 2 \skip 8 f8 ees d
  c2 b2
  c4 \skip 4
                                % 56
  \skip 2 \skip 8 f,8 ees d
  c2 b2
  c1
                                % 59
  \skip 4 c4 c4. c8
  c1
  \skip 4  c4^"(molto rit.)" c4 c4
  c1~ c1~ c1~ c1~
}

sopranoLyrics = \lyricmode {
  \repeat unfold 4 { \skip 1 }
  o my Jer -- ru -- sa -- lem, __
  if you would on -- ly hear my cry.
  I come to you, o my Je -- ru -- sa -- lem,
  to you to suf -- fer and to die.
  comes a day in the morn -- ing, of
  wav -- ing your palms on
  high __ ,when you will
  shout loud ho -- sa -- nas and
                                % 25
  bles -- sing, __ Yet soon will
  jeer, __ "\"O" cru -- ci -- "fy!\""
  I come to
                                % 28 second ending
  die. \skip 1
  comes a day of the
  morn -- ing, when
  an -- ci -- ent  strife shall
  cease, __ and I will
  reign ov -- er you in
                                % 34
  glo -- ry, __ a -- round my
  throne __ e -- ter -- nal
  peace. __ O come to
                                % 37
  me. __ now, my Je --
  ru -- sa -- lem, __ lay bear your
  heart __ to me to --
                                % 40
  day. __ O come to
  me, __ now, my Je --
  ru -- sa -- lem, __ come now to
                                % 43
  me, __ turn not a --
  way! O come to
  me.__ O my Je --
                                % 46
  ru -- sa -- lem, __ lay bear your
  heart __ to me to --
  day. __ O come to
                                % 49
  me, __ now, my Je --
  ru -- sa -- lem, __ come now to
  me, __ turn not a --
                                % 52
  way
  O my Je --
  ru -- sa -- lem!
                                % 56
  O my Je --
  ru -- sa -- lem!
                                % 59
  Je -- ru -- sa --
  lem! __
  Je -- ru -- sa --
                                % 62
  lem! __
}

altoMusic = \relative c'' {

  b2\rest b8\rest g^"Solo (or women only)"
  ees' b
  c2^~ c8\noBeam g c g
  bes8. aes16 aes4^~ aes8 \breathe f g aes
  g2^~ g8[ f] ees f
  g2^~ g8 \breathe g ees' b
                                % 6
  c2^~ c8\noBeam g8 c g
  bes8. aes16 aes4^~ aes8 \breathe
  f g aes g2^~ g8 f ees d c2^\fermata  b'2\rest

  b1\rest b2\rest b8\rest g g g
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \mark \markup { \musicglyph #"scripts.segno" }
  \repeat volta 2 {
    ees2. ~ ees8 ees8
    c8. c16 c2 f4
    b,4 b2 b8 b
    c2 ~ c8 g' g g
    ees2. ~ ees8 ees8
    c8. c16 c2 f4
    b,4 b2 b4
  }
  \alternative {
    {
                                % 19 first ending
      c2. bes'4
      d,4. f8 d4 d4
      ees4 ees2 b'8\rest bes8
                                % 22
      d,4. f8 d4. d8
      d4 bes4 d4. f8
      ees4 g8. g16 aes4 aes8 aes
                                % 25
      a4 a~ a8 c fis, aes
      g4( ees4.) ees8 ees ees
      d2 b'8\rest g8 g g
    }
    {
                                % 28
      c,2. bes'4
      d,4. f8 d4 d
      ees4 ees2 b'8\rest bes8
                                % 31
      d,4 f bes4. d,8
      d4 b4 d4. f8
      ees4 g8. g16 aes4 aes4
                                % 34
      a4 a4~ a8 c bes aes
      g4(ees4.) ees8 ees ees
      d2~ d8 g8 g g
    }
  }
                                % 37
  ees2~ ees8 ees ees ees
  f8. f16 f4~f8 f f f
  d4 d d4. d8
                                % 40
  ees2~ ees8 g8 g g
  ees2~ ees8 ees ees ees
  f8. f16 f4~ f8 f f f
                                % 43
  d4 d4. f8 ees d
  c2 b'8\rest g8 g g
  g8 ees2 ees8 ees ees
                                % 46
  f8. f16 f4~f8 f f f
  d4 d d4. d8
  ees2~ ees8 g8 g g
                                % 49
  ees2~ ees8 ees ees ees
  f8. f16 f4~f8 f f f
  d4( b4.) g'8 g g
                                % 52
  ees4 b'4\rest
  b2\rest b8\rest
  f8 ees d
  c2 b2
                                % 56
  c4 b'4\rest
  b2\rest b8\rest
  f8 ees d
  c2 b2
  c1
                                % 59
  b'4\rest c,4 c4. c8
  c1
  b'4\rest c,4 c4 c4
  c1~ c1~ c1~ c1~
}

altoLyrics = \lyricmode {
  I come to you, o my Je -- ru -- sa -- lem,
  if you would on -- ly hear my cry. __
  I come to
                                % 6
  you, __
  o my Je -- ru -- sa -- lem,
  to you to suf -- fer and to die.
                                % 11
  I come to you, __ Je -- ru -- sa -- lem, __
  if on -- ly hear my
                                %15
  cry. __
  I come to you, __ Je -- ru -- sa -- lem,
  to suf -- fer and die.
  But comes a day in morn -- ing,
  \skip 1 wav -- ing palms on
  high, when you will
  shout loud ho -- sa -- nas and
  bles -- sing, yet soon will
  jeer, __ "\"O" cru -- ci -- "fy!\""
  I come to
                                % 28 second ending
  die. But
  comes a day of
  morn -- ing, when
  an -- cient __ strife shall
  cease, __ and I will
  reign ov -- er you in
                                % 34
  glo -- ry, __ a -- round my
  throne e -- ter -- nal
  peace. __ O come to
                                % 37
  me. __ now, my Je -- ru -- sa -- lem, __ lay bear your
  heart, your heart to --
                                % 40
  day. __ O come to
  me, __ now, my Je --
  ru -- sa -- lem, __ come now to
                                % 43
  me, o turn not a --
  way! O come to
  me now, O my Je --
                                % 46
  ru -- sa -- lem, __ lay bear your
  heart, your heart to --
  day. __ O come to
                                % 49
  me, __ now, my Je --
  ru -- sa -- lem, __ come now to
  me, __ turn not a --
                                % 52
  way
  O my Je --
  ru -- sa -- lem!
                                % 52
  O my Je --
  ru -- sa -- lem!
                                % 56
  Je --
  ru -- sa --
  lem!
                                % 59
  Je -- ru -- sa --
  lem! __
  Je -- ru -- sa --
                                % 62
  lem! __
}

tenorMusic = \relative c {
  \repeat unfold 19 d1\rest
  d2\rest f4 aes bes bes2 d,4\rest
  f4 bes d bes
  b d, g b
  c4 c8. c16 c4 c8 c
                                % 25
  c4 ees~ ees8 d,8\rest d4\rest
  ees'4( c4.) c8 c c
  b2 d,2\rest
                                %28 second ending
  d1\rest
  d2\rest f4 aes
  bes4 bes2 d,4\rest
                                % 31
  f4 bes d bes
  b d, g b
  c4 c8. c16 c4 c
                                % 34
  c4 ees~ ees8 d,8\rest d4\rest
  ees'4( c4.) c8 c c
  <b~ g~>2 <b g>8 r8 r8 f'8
                                % 37
  ees4 g, c g
  c8. c16 c4~ c8 c c c
  b4 b b4. b8
                                % 40
  c4 g c r8 f8
  ees,4 g c g
  c8. c16 c4~ c8 c c c
                                % 43
  b4 b4. b8 b b
  c4 c b4. f'8
  ees4 c2 g4
                                % 46
  c8. c16 c4~ c8 c c c
  b4 b b4. b8
  c4 g c4 r8 f8
                                % 49
  ees,4 g c g
  c8. c16 c4~ c8 c c c
  b4 d,2 g8 d
                                % 52
  \time 2/4 c'4 d,4\rest
  \time 4/4 d1\rest
  d1\rest
  \time 2/4 d2\rest
                                % 56
  \time 4/4 d2\rest d8\rest f8 ees d
  c2 b
  c1
                                % 59
  d4\rest c4 c4. c8
  c1
  d4\rest c4^"(molto rit.)" c c
                                % 62
  c1~ c1~ c1~ c1
}

tenorLyrics = \lyricmode {
  day in morn -- ing
  wav -- ing palms on high,
  when you will
  shout loud ho -- sa -- nas and
  bles -- sing,
  jeer, __ "\"O " -- cru  -- ci -- "fy!\""
  day of morn -- ing
  \skip 1
  an-cient strife shall
  cease, and I will
  reign ov -- er you in
  glo -- ry, __
  throne e -- ter -- nal
  peace. __ O
                                % 37
  come to me, Je --
  ru -- sa -- lem, __ lay bare your
  heart, your heart to --
                                % 40
  day. __ O come
  o come to me Je --
  ru -- sa -- lem, __ come now to
                                % 43
  me, O turn not a --
  way! O come to
  me now, Je --
                                % 46
  ru -- sa -- lem, __ lay bare your
  heart, your heart __ to __
  day O come O
                                % 49
  come O come Je --
  ru -- sa -- lem, __ come now to
  me, O not a --
                                % 52
  way
  O my Je --
  ru -- sa -- lem!
                                % 56
  Je -- ru -- sa --
  lem!
                                % 59
  Je -- ru -- sa --
  lem! __
  Je -- ru -- sa --
                                % 62
  lem! __
}

bassMusic = \relative c {
  \repeat unfold 19 \skip 1
  \skip 2 f4 f ees bes'2 \skip 4
  bes,4 d f4. f8
  g4 g, b c
  c4 c'8. c16 c4 c,8 c
                                % 25
  ees4 fis~ fis8 \skip 4.
  g4 g2 g4
  <g g,>2 \skip 2
                                % 28 second ending
  \skip 1
  \skip 2 f4 f
  ees4 bes'2 \skip 4
                                % 31
  bes,4 d f4. f8
  g4 g, b d
  c4 c'8. c16 c4 c,
                                % 34
  ees4 fis4~ fis8 \skip 4 \skip 8
  g4 g g4. g8
  <g g,>2 <g g,>8 r8 r4
                                % 37
  c,2. c4
  c'8. f,16 f4~ f8 c' c f,
  g4 g g4. g8
                                % 40
  c,2. r4
  c2. c4
  c'8. f,16 f4~ f8 c' c f,
                                % 43
  g4 g4. g8 g, f'
  ees4 ees g4. g8
  c,4 c2 c4
                                % 46
  c'8. f,16 f4~ f8 c' c f,
  g4 g g4. g8
  c,2. r4
                                % 49
  c2. c4
  c'8. f,16 f4~ f8 c' c f,
  g4 g,2 g8 g
                                % 52
  c4 \skip 4
                                % 56
  \skip 1 \skip 1 \skip 2
  \skip 2 \skip 8
  f8 ees d
  c2 b
  c1
                                % 59
  d4\rest c4 c4. c8
  c1
  d4\rest c4 c c
                                % 62
  c1~ c1~ c1~ c1
}

bassLyrics = \lyricmode {
  day in morn -- ing
  wav -- ing palms on high,
  when you will
  shout loud ho -- sa -- nas and
  bles -- sing,
  jeer, "\"Cru" -- ci -- "fy!\""
  day of morn -- ing
  \skip 1
  an-cient strife shall
  cease, and I will
  reign ov -- er you in
  glo -- ry, __
  throne e -- ter -- nal
  peace. __ O
                                % 37
  me, Je --
  ru -- sa -- lem, __ lay bare your
  heart, your heart to --
                                % 40
  day. __ come Je --
  ru -- sa -- lem, __ come now to
                                % 43
  me, O turn not a --
  way! O come to
  me now, Je --
                                % 46
  ru -- sa -- lem, __ lay bare your
  heart, your heart __ to __
  day
                                % 49
  come Je --
  ru -- sa -- lem, __ come now to
  me, O not a --
                                % 52
  way
                                % 56
  O my Je --
  ru -- sa --
  lem!
                                % 59
  Je -- ru -- sa --
  lem! __
  Je -- ru -- sa --
                                % 62
  lem! __
}

pianoTreble = \relative c'' {
  b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest b1\rest
  r8 r16 b' c( fis, g d ees bes c fis,) g( d ees b)
  c2. b4
  <c ees>4 <c ees>2 <c ees>4
                                %13
  <aes c> <aes c>2 <aes c>4
  <b d> <b d>2 ees8 <b d>8
  <c ees>4 <c ees>2 b4
                                %16
  <c ees>4 <c ees>2 <c ees>4
  <aes c> <aes c>2 <aes c>4
  <b g'>4 <b g'>2 <b d>4
                                %19 first ending
  <c g ees>4 <c g ees>2\fermata r4
  bes8 d f d f4 aes~ aes8 bes, g' bes, ees bes g' bes
  bes8 d, f d bes' d, f aes
  g8 b, d b d4 f4
  <ees c'>8 c <ees c'>8 c <ees c'>8 c <ees c'>8 c
                                % 25
  <ees c'>8 c <ees~ a~>4 <ees a> r4
  <ees g>8 c <ees g>2 <c ees g>4
  g'8 b,~ <d b>2 b8^"(col canto)" d
                                % 28 second ending
  <ees, g c>4 <ees g c>2\fermata r4
  bes'8 d f d f4 aes~ aes8 bes, g' bes, ees bes g' bes
                                % 31
  bes8 d, f d bes' d, f aes
  g8 b, d b d4 f4
  <ees c'>8 c <ees c'>8 c <ees c'>8 c <ees c'>8 c
                                % 34
  <ees c'>8 c <ees~ a~>4 <ees a> r4
  <ees g>8 c <ees g>2 <c ees g>4
  g'8 b,~ <d b>2\fermata b8^"(col canto)" d
                                % 37
  <c ees>4 <c ees>2 <c ees>4
  <aes c> <aes c>2 <aes c>4
  <b d> <b d>2 ees8 <b d>8
                                % 40
  <c ees>4 <c ees>2 b4
  <c ees>4 <c ees>2 <c ees>4
  <aes c> <aes c>2 <aes c>4
                                % 43
  <b g'>4 <b g'>4. <b d>8 <b ees>8<b f'>8
  <ees c>4 <d b>4. <b g'>8 <f' g> <b, g'>
  <g c ees>4 <g c ees>2 <g c ees>4
                                % 46
  <aes c f>4 <aes c f>2 <aes c f>4
  <g b d>4 <g b d>2 <d' f b>4
  <ees c'>4 <g c, e>2 <d f b>4
                                % 49
  <ees c'>4 <g, c e>2 <g c e>4
  <f' a c> <aes, c f>2 <aes c f>4
  <b d g> <d g b>2 <g ees'>8 <f b>
                                % 52
  c'16 r16 r16 g16 ees'8( b8
  c8) c( a' e f) f( ees d
  c2) b
  c16 r16 r16 g16 ees'8( b8
                                % 56
  c8) c( a' e f) f( ees d)
  <c ees,>2 <d, b'>
  <e c'>4 e~ <e~ g> <e c'(>
                                % 59
  c'4) f, b4. d8
  c4 e g c
  c,,1
                                % 62
  <c ees g c ees g c>\arpeggio
  <c ees g c g' c>\arpeggio
  \ottava #1 <c' ees g d' fis>\arpeggio
  r1 \bar "|."

}

pianoBass = \relative c {
  d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest d1\rest
  r4 <c ees g>2 g'4
  \set tieWaitForNote = ##t
  c,8 ~ g' ~ <c, g'>2.
  c8 ~ f ~ <c f>2.
  g8 ~ d' ~ <g, d'>2.
  c,8 ~ g' ~ <c, g'>2 g''4
                                % 16
  c,8 ~ g' ~ <c, g'>2.
  c8 ~ f ~ <c f>2.
  g8 ~ d' ~ <g, d'>2 << { \voiceTwo g'8 f } \new Voice { \voiceOne g,4 } >> \oneVoice
                                % 19
  c,8 ~ g' ~ <c, g'>2 r4
  bes'8~ f'~ bes~ bes~ <bes f bes,>2
  ees,,8~ bes'~ ees~ ees~ <ees, bes' ees>2
                                % 22
  bes'8~ f'~ bes~ bes~ <bes f bes,>2
  g,8~ d'~ g~ g~ <g d g,>2
  c,,8 g' ees' g, aes ees' aes ees
                                % 25
  a,8 a' fis4~ fis r4
  g,8~ ees'~ g4~ <g, ees' g>2
  g8~ g' <f g,>2 r4
                                % 28 second ending
  c,8~ g'~ <c, g'>2 r4
 bes'8~ f'~ bes~ bes~ <bes f bes,>2
  ees,,8~ bes'~ ees~ ees~ <ees, bes' ees>2
                                % 31
  bes'8~ f'~ bes~ bes~ <bes f bes,>2
  g,8~ d'~ g~ g~ <g d g,>2
  c,,8 g' ees' g, aes ees' aes ees
                                % 34
  a,8 a' fis4~ fis r4
  g,8~ ees'~ <g, ees' g>2.
  g8~ g' <f g,>2 r4
                                % 37
  c8 ~ g' ~ <c, g'>2.
  c8 ~ f ~ <c f>2.
  g8 ~ d' ~ <g, d'>2.
                                % 40
  c,8 ~ g' ~ <c, g'>2 g''4
  c,8 ~ g' ~ <c, g'>2.
  c8 ~ f ~ <c f>2.
                                % 43
  g8~ d'~ <g, d'>2 <g g'>4
  c8 g'~ g4~ <g, d' g>2
  c,8 g'~ <c g>2.
                                % 46
  c8~ f~ <c f>2 c4
  g8~ d~ <g d>2 g'4
  c,,8 g' ees'2 g4
                                % 49
  c,,8~ g'~ <c, g'>2.
  c'8~ f~ <c f>2 f4
  g,8~ d'~ <g, d'>2 <g d' g>4
                                % 52
  <c g'>4. \ottava #1 <d' f>8(
  <ees g>4.) <e g>8( <f aes>4) c'8 aes
  g,8~ ees'~ <g, ees' g>4 g8~ d'~ <g, d' f>4
  c4. <d f>8(
                                % 56
  <ees g>4.) <e g>8( <f aes>4) c'8 aes
  \ottava #0
  g,,8~ ees'~ <g, ees' g>4 g8~ d'~ <g, d' f>4
                                % 59
  c8~ g'~ <c, g'>2.
  c8~ aes'~ <c, aes'>2 aes'4
  c,8~ g'~ <c, g'>2.
  r1 r1 r1
  \ottava #1
  r1
  <c g' ees' c'>1
}

\score {
  <<
    \new ChoirStaff <<
      \new Staff = "women" <<
        \new Voice = "sopranos" { \voiceOne << \global \sopranoMusic >> }
        \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
      >>
      \new Lyrics \with { alignAboveContext = #"women" } \lyricsto "sopranos" \sopranoLyrics
      \new Lyrics = "altos"
      \new Lyrics = "tenors"
      \new Staff = "men" <<
        \clef bass
        \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
        \new Voice = "basses" { \voiceTwo << \global \bassMusic >> }
      >>
      \new Lyrics \with { alignBelowContext = #"men" } \lyricsto "basses" \bassLyrics
      \context Lyrics = "altos" \lyricsto "altos" \altoLyrics
      \context Lyrics = "tenors" \lyricsto "tenors" \tenorLyrics
    >>
    \new GrandStaff <<
      \new Staff = "right" << \global \pianoTreble >>
      \new Staff = "left" << \clef bass \global \pianoBass >>
    >>
  >>

  \layout {
  }
}
