#let draft(it) = {
	set text(fill: gray);
	it;
}
#let _lorem(n) = draft(lorem(n))
#let banner(it) = {
	set align(center);
	set text(style: "italic");
	[\[#it\]];
}

#set page(paper: "us-letter", margin: 0.8in)
#set par(justify: true)

#set text(font: "Times New Roman")
#set heading(numbering: "1.1.1.")
#let heading1size = 15pt;
#let resetheadingsize() = {
	show heading.where(level: 1): set text(size: heading1size);
}
#resetheadingsize();
#set cite(style: "alphanumeric")

#let title = [Examining "2-week Minecraft Phase": The Cyclical Engagement Patterns in Sandbox Gaming]
#{
	set align(left);
	set text(size: 19pt, weight: "bold");
	v(1em);
	title;
	v(1em);
}

#heading(numbering: none)[Abstract]

The 2011 video game, _Minecraft_, has sparked a craze across the globe.
Due to its nature as a sandbox game, _Minecraft_ offers players extensive creative liberties to build their dream world.
However, a peculiar yet common phenomenon is observed among many _Minecraft_ players:
A cyclical pattern of fatigue with the worlds they are currently playing, usually within a range of 2 weeks.
This phenomenon, colloquially referred to as the "2-week Minecraft phase", remains largely unstudied in academic literature.
To investigate this occurrence, we conducted a pilot survey among Minecraft players to assess its prevalence.
Subsequent in-depth interviews were conducted with representative samples to gather more nuanced insights.
The final analysis reveals the distribution and underlying causes of this phenomenon.
Our study examines the "2-week Minecraft phase" from psychological and social aspects, providing valuable insights for game developers seeking to enhance long-term player engagement and satisfaction.

*Keywords:* Minecraft, Game psychology, Qualitative research, Cyclical engagement pattern

#v(1em)
// #outline()
// #pagebreak()

#columns(2)[
	= Introduction

	#banner[This section is written with a highly informal tone and needs to be polished.];

	_Minecraft_, the video game released by the Swedish game company _Mojang Studios_ in 2011, has achieved a great success in the global game market.
	Being a sandbox game, its internal freedom grants the players unlimited possibilities to build their dream world virtually.
	Starting from the most basic element of the game, blocks, countless styles of game play have been adopted by players of all kind.
	Because the game mechanic itself doesn't limit players' actions, players could have full control of what they would do in a game world.

	Although a highly free mechanic would theoretically allow unlimited playing with in a single game world, many _Minecraft_ players would usually experience a boredom towards the world they're currently playing, then either stop playing the game or turn to a new world, leading to a cyclical engagement pattern.
	This experience is shared by players from worldwide, but hasn't been discussed widely in the public.
	
	In March 2024, user "Legitimate-Bath-9651" made a post on _Reddit_ @Leg24, stating the experience publicly and giving five possible reasons behind this cyclical fatigue:

	- Novelty: Players like the freshness of participating in new worlds, so the motivation is lost when a world gets old.
	- Direction: The unsatisfied requirements (like mining, building a shelter) push players to play; when the game comes to the ending stage, all requirements are either fulfilled or automated, so players become aimless.
	- Attrition (multiplayer): When a player stops playing, more players would tend to follow.
	- Activity difference (multiplayer): Players at different engagement level would have different developing pace. Slower players may feel detached with the rest of the world.
	- Differences in goals/directions (multiplayer): Players having different ideas for progression may drift away from each other, eventually losing motivation to play as a part of the world.

	The post has lit up a mild but not strong discussion among other _Reddit_ users, sharing their views and solutions on/to the experience.

	In the title of the post, the phrase _"2-week Minecraft Phase"_ is used.
	It is necessary to mention that this is not the first time the phrase _"Minecraft Phase"_ has appeared on the Internet.
	Earlier in February 2023, user "gawkgawkcumsock" has created the entry _"minecraft phase"_ on _Urban Dictionary_ @gaw23, but its meaning was defined as _"the annual 2 week phase of the minecraft grind that most people find themselves stuck in"_, a bit off from the definition in the later _Reddit_ post.
	Back to an even earlier stage of years ago, the exact same phenomenon has been brought up occationally on the _Minecraft_ _subreddit_, but without the now-coined term.

	Later in July 2024, _YouTube_ content creator "niko" made video with title _"The 2 Week Minecraft Phase Explained"_ @nik24.
	The title is somehow ambiguous, as the video only explained _what_ is the _2-week Minecraft Phase_, but not _why it occurs_.
	The video became a hit, furtherly pushing the concept to a wider range of the _Minecraft_ community.
	By the end of September 2024, the video has gained over 1.3M clicks.

	Data from _Google Trends_ (@fig:google-trend-data) shows that starting from September 2024, the phenomenon has gone into the public's eyesight.

	#figure(
		box(
			width: 100%, height: 8em,
			stroke: black,
		)[
			#set align(center + horizon)
			placeholder
		],
		caption: [Search count of _"Minecraft Phase"_ over a month in the United States according to _Google Trends_.]
	) <fig:google-trend-data>

	Up to October 2024, no research studies has been conducted on this phenomenon yet, nor is there any academical literature.
	So to introduce _"2-week Minecraft Phase"_ to the academic community, our team conducted a formal research to find out the causes of it.
	
	#banner[Brief intro of the research plan.]
	#_lorem(50)
	
	#banner[Goals of the research.]
	#_lorem(30)


	= Method

	#banner[This section should be rewritten.];

	- We will be utilizing a survey first in order to gain a baseline idea of how players feel about the concept of starting new worlds, to see how common it is, and what types of players restart their worlds more often than others.

	- We will follow these surveys with in-depth interviews in order to gain a more personal and qualitative idea about how players feel about starting new worlds.

]

#{
	set text(size: 10pt);
	resetheadingsize();
	[#bibliography("bibliography.bib",
		full: true,
		style: "ieee"
	)]
}

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
#show table: set text(size: 10pt);

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