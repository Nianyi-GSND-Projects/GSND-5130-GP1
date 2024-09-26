#set page(paper: "us-letter")
#set par(justify: true)
#let _lorem(n) = {
	set text(fill: gray);
	lorem(n);
}
#set heading(numbering: "1.1.1.")

#let title = "[title placeholder]"
#{
	set align(center)
	set text(size: 17pt, weight: "bold")
	title
}

#heading(numbering: none)[Abstract]

_Minecraft_ is a survival video game in which players traverse through a blocky world crafting materials, mining for resources, and fighting monsters.
This research piece explores the reasons why _Minecraft_ players choose to create new worlds instead of continuing precious saves.
We will be looking at this question through a game design lens, examining what mechanics and aspects of the game encourage or discourage players to abandon previous worlds and create new ones.
Research will be conducted through qualitative interviews.
#_lorem(30)

#v(1em)
// #outline()
// #pagebreak()

#columns(2)[
	= Introduction

	Released in 2011, Minecraft is one of the most popular video games of all time. The gameplay revolves around the player surviving in a procedurally-generated wilderness.
	Players

	#_lorem(200)

	= Related Work

	#_lorem(300)

	#colbreak()
	= Method

	#{
		set align(center)
		[\[This paragraph needs to be rewritten.\]]
	}

	- We will be utilizing a survey first in order to gain a baseline idea of how players feel about the concept of starting new worlds, to see how common it is, and what types of players restart their worlds more often than others.

	- We will follow these surveys with in-depth interviews in order to gain a more personal and qualitative idea about how players feel about starting new worlds.

]

#bibliography("bibliography.bib",
	full: true,
	style: "ieee"
)

#set heading(numbering: (..numbers) => {
	numbers = numbers.pos();
	numbers.remove(0);
	return numbering("A.1.", ..numbers);
})
#heading(numbering: none)[Appendix]

#show table.cell.where(y: 0): set text(weight: "bold")
#let tnocounter = counter("tno")
#let tno() = { context tnocounter.display(); tnocounter.step(); }
#let notable(..args) = { tnocounter.update(1); table(..args); }

#show figure: set block(breakable: true)

== Survey Questions

#figure(
	notable(
		columns: 3,
		stroke: none,
		align: (center, left, center),
		table.hline(),
		table.header[No.][#set align(center); Question][Expected Answer],
		table.hline(stroke: 0.25pt),
		[#tno()], [How many years have you played Minecraft?], [0-11],
		[#tno()], [How often do you play Minecraft?], [Occasionally, once a month, multiple times a month, etc.],
		[#tno()], [Do you play singleplayer or multiplayer more often?], [Singleplayer, multiplayer],
		[#tno()], [What Minecraft mode do you play the most?], [Survival, creative, online servers],
		[#tno()], [On average, how many hours do you play in a single Minecraft world?], [0-5, 5-10, 10-15, 15+],
		[#tno()], [Have you defeated the Enderdragon in a survival world?], [yes, no],
		[#tno()], [What aspects of your previous world caused you to stop playing?], [Boredom, frustration, etc.],
		table.hline(),
	),
	caption: [The survey questions used to pilot the research.]
) <table:survey-questions>

== Interview Questions

#figure(
	notable(
		columns: 2,
		stroke: none,
		align: (center, left),
		table.hline(),
		table.header[No.][#set align(center); Question],
		table.hline(stroke: 0.25pt),
		[#tno()], [
			Can you describe the last time you decided to start a new world?
			- What was the main reason you wanted to start over?
			- How did the new world compare to the one you left behind?
		],
		[#tno()], [
			When you create a new world, do you have specific goals in mind, or do you play more spontaneously?
			- If you have goals, what are they? (e.g., building a specific structure, exploring, defeating bosses)
		],
		[#tno()], [
			Do you feel a sense of attachment to the worlds you leave behind, or is it easy to move on?
			- If you feel attached, what makes it hard to move on?
		],
		[#tno()], [
			How do new updates or changes in Minecraft influence your decision to start a new world?
				- Have there been updates that made you want to restart?
		],
		[#tno()], [
			What role do mods play in your decision to start a new world?
			- Do you start new worlds specifically to try out mods?
		],
		[#tno()], [
			Have you ever regretted abandoning a world? If so, why?
		],
		[#tno()], [
			How does playing in multiplayer or singleplayer affect your decision to start fresh?
				- Are you more likely to start over in one mode versus the other?
		],
		[#tno()], [
			What’s your process when deciding where to settle in a new world?
				- Do you explore a lot before choosing, or do you settle down quickly?
		],
		[#tno()], [
			Are there any moments of progression during which you feel like you want to start a new world instead of continuing?
				- Do you fight the Ender Dragon, Wither, make Netherite equipment?
				- Why do these progression points make you feel this way?
		],
		[#tno()], [
			Have you noticed any patterns in your behavior when it comes to restarting worlds?
				- For example, do you tend to restart after reaching certain milestones or facing specific challenges?
		],
		table.hline(),
	),
	caption: [A brief outline of the questions to be asked in the interview.]
) <table:interview-questions>