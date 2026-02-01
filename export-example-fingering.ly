\version "2.24.0"
\include "oll-core/package.ily"
\loadPackage lilypond-export
opts.exporter = #exportMusicXML
\header {
  title = "Fingering Test"
}

\score {
  \new Staff {
    \clef treble
    \time 4/4
    
    \mark "Simple Fingering"
    c'4-1 d'4-2 e'4-3 f'4-4 |
    
    \mark "Fingering with Slurs"
    c'4-1( d'4-2) e'4-3( f'4-4) |
    
    \mark "Chords with Fingering"
    <c'-1 e'-3 g'-5>1 |
    
    \mark "Complex"
    c'8-1( d' e' f'-4) g'2-5 |
  }
  \layout { 
    \FileExport #opts
  }
}
