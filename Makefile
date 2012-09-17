all: presen.html programming.html

presen.html: presen.md oao-dot.gif sampleCodes/prolog/coloring.png
	md-slider --title 'プログラミング言語俯瞰'  presen.md > presen.html
programming.html: programming.md
	md-slider programming.md > programming.html

