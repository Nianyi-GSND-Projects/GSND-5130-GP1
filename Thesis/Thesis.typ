#let figureplaceholder(height) = box(
	width: 100%, height: height,
	stroke: black,
)[
	#set align(center + horizon)
	placeholder
]

#set page(paper: "us-letter", margin: 0.8in)
#set par(justify: true)
#show quote: set text(style: "italic")
#show quote: set pad(top: -1em, bottom: -0.5em)
#set quote(block: true, quotes: true)

#set text(font: "Times New Roman")
#set heading(numbering: "1.1.1")
#show heading.where(level: 2): set heading(numbering: none)
#show heading.where(level: 3): set heading(numbering: none)
#let heading1size = 15pt;
#let resetheadingsize() = {
	show heading.where(level: 1): set text(size: heading1size);
}
#resetheadingsize();
#set cite(style: "alphanumeric")
#show link: set text(size: 0.9em, font: "Consolas")

#let title = [Examining "2-week Minecraft Phase": The Cyclical Engagement Patterns in Sandbox Gaming]
#{
	set align(left);
	set text(size: 19pt, weight: "bold");
	v(1em);
	title;
}
#{
	set align(center);
	let author(name: "", mail: "") = {
		h(0.5em);
		box()[
			#text(style: "italic")[#name]
			#parbreak()
			#link("mailto:" + mail)[#mail]
		];
		h(0.5em);
	}
	author(
		name: [Alexander Vassilopoulos],
		mail: "vassilopoulos.al@northeastern.edu",
	);
	author(
		name: [Nianyi Wang],
		mail: "wang.nian@northeastern.edu",
	);
	author(
		name: [Shencheng Fu],
		mail: "fu.shenc@northeastern.edu",
	);
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

*Keywords:* Minecraft, Game psychology, Cyclical engagement pattern

#v(1em)
// #outline()
// #pagebreak()

#columns(2)[
	= Introduction

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
		placement: top,
		outlined: true,
		image("images/google-trends.jpg"),
		caption: [Search count of _"Minecraft Phase"_ over a month in the United States according to _Google Trends_.]
	) <fig:google-trend-data>

	= Related Work

	=== General Psychology

	The fatigue of players' towards a certain video game is nothing new to the academical community.
	_Bikas et al._'s work @BPDM22 has stated clearly that for most recreational activities, the physical fatigue caused by prolonged execution and the lacking of proper rest are usually not the cause of people quitting.
	They furtherly stated that it is more of psychological factors.

	One of the earliest research studying video game fatigue from a psychological approach was in 2007, where _Lee et al._ conducted a series of interviews on the reasons of players in Taiwan quitting MMORPGs @LYL07.
	They concluded that the psychological factors that cause a player to quit a video game are never one-dimensional.
	However, their research addresses the topic more as a problem of video game addiction that needs to be solved, instead of treating it as an objective phenomenon.

	Strååt and Verhagen's work @SV18 has traced a group of players playing an AAA video game for 20 hours, and has done longitudinal case studies to invesigate the change on their experience towards the game.
	They then concluded several retention inhibiting factors that could be used in game designs to prevent early drop-off.
	Their study provided valuable insights for designing more attractive games, but the playing manner they chose to study appears to be short-ranged for normal game players.
	Although there are indeed many heavy players who could bear with a video game for more than 20 continuous hours, but that is not what the majority of the player group would do.
	Especially among child players, the median of the play time could be at the level of one or two hours per day @MCG18.

	=== Story-telling

	It is well known that storytelling is a powerful element of video games, as addressed in Schell's book _The Art of Game Design: A Book of Lenses_ @Story.

	_Alex Mitchell_ has proposed this very intuitive point in the book _The Digital Gaming Handbook_: #quote(block: false)[Once players 'get the good ending', they are unlikely to have much, if any, motivation to replay. Story-focused games, as opposed to more abstract games, tend to be seen as having limited replay value.] @Ale20
	_Minecraft_, although being a sandbox game, does feature a "main story line".
	That is, to enter the _End_ and slay the _Enderdragon_.

	Even more, _Minecraft_'s native _hardcore_ mode features a "perma-death" (permanent-death) style of gameplay.
	In Keogh's work in 2013, they stated that by adding this "perma-death" feature, the game's narrative weight is increased, leading to a more influential story-telling @Keo13.

	With all these being said, due to its freedom on the mechanisms as a sandbox game, there could be so many different play styles that player could freely choose.
	As a result, players don't really have to follow the official story line @o2016building.
	Therefore, we need to explore topics beyond just story-telling.

	=== Our Work

	In this research, we want to focus on the engagement pattern towards _Minecraft_ that lasts at least _week-long_ and is cyclical.
	Also, we want to explore a wider possibilities of the factors that may affect players' experience throughout the engagement cycle.
	Following Creswell's guidance on selecting the research approach @creswell2017research, we decided to conduct a qualitative research to collect data directly from _Minecraft_ players.

	= Method

	The method used for this research is intended to be qualitative, but before diving directly into finding the causes, the research team wanted to validate the existence of the phenomenon and the size of the popularity affected by it.
	To do that, it is the best to a quantitative method.

	== Pilot Survey

	The validation is realised via an online survey towards a collection of _Minecraft_ players.
	The survey questions consist of non-private information related to players' experience with _Minecraft_, including how long they have been playing the game, how frequently they create new worlds, what modes they play the most, what negative feelings have the game caused on them, etc.
	There are two purposes for this pilot survey:

	- To find the distribution of players' engagement duration towards worlds to validate if the 2-week phase really exists.
	- To collect a sample base that could be filtered and used for the later interview stage.

	A table of survey questions could be found in the appendix section (@table:survey-questions).

	== Interview

	After the survey data is collected, it is possible to analyze it and filter out a subset of players who have strong resonance with the phenomenon.
	The research team then conduct one-to-one interviews with these selected players.
	The interviews could either be online or in-person.

	The main purpose of the interview stage is to find out the causes of the phenomenon by gathering subjective experiences from individual samples.
	The gathered data is then be transcribed, coded, grouped into categories for later analysis.

	A table of interview questions could be found in the appendix section (@table:interview-questions).

	== Analysis

	The main form of analysis involved applying thematic analysis to data relating to our focus question: "What happened during the 2-week _Minecraft_ phase?"
	This involved an inductive, systematic identification of emergent patterns from the interview and survey data relating to players' reasons for world abandonment and the factors that influenced their funnel through the "2-week _Minecraft_ phase".

	Thematic analysis is employed on the data in two stages.
	The first stage involved coding the text into categories, according to the general types of player experience---For example, progression milestones; multiple-player relationships; affective bonds with worlds; and update/mod impacts.
	The experiences in turn revealed a set of overarching themes, which were subject to a finer-grained thematic analysis.
	By assessing the content of the responses, we looked more closely into the reasons why players engage in cyclical patterns of play.

	The data were then rearranged into a set of key themes (e.g. attachment, updates-as-motivators, mods/customisation, and multiplayer versus singleplayer), which in turn generated sub-themes (e.g. the challenge of exploring remade worlds, and the social dynamics involved in keeping multiplayer engagement alive), which were then further analyzed and ordered into a matrix according to their frequency and intensity across the players.

	The analysis commenced in the close reading of all the interview transcripts and survey results, where every transcript was read and re-read independently several times to gain a deep understanding of the participant's story.
	Thereafter, codes were developed for all responses that pertained to meaningful player behaviors regarding the creation, abandonment and continuation of their _Minecraft_ worlds.
	These codes were then used to group narratives into themes that allowed us to map both observed expected player behaviors (e.g. boredom as a trigger for discontinuation), as well as more surprising results (the enduring effect of multiplayer social bonds on extending the lifespan of a world).

	After the codes were established, we looked for recurring themes by examining those codes from a larger, more abstract perspective, such as identifying patterns across player quotes regarding how updates both invoke excitement and disappointment, and charting how they linked across cases.
	Themes were identified, and then we looked back at the raw data to check for reliability:
	Do the themes truly define the experience of players?
	We pared down the hierarchy of themes where necessary.

	This was managed by, among other things, involving a large sample in the research (all frequent _Minecraft_ players), having multiple independent coders scrutinize the data, and the iterative nature of thematic analysis, which allowed the coding and identification of themes to be refined and improved through feedback.

	This yielded several important insights about the dynamics of _Minecraft_ engagement, including how updates, mods and multiplayer sessions all have different effects (and lengths) that cause the "2-week _Minecraft_ phase" to repeat itself.

	= Interview Results

	By analysing their responses in more than 25 in-depth interviews, recurring themes that cause players "break" their current worlds and create new ones could be identified.
	These patterns relate to emotionality, the effects of game updates, multiplayer dynamics, and game mods (user-created additions to the game).
	The interviews offer a nuanced understanding of the ways in which and why players cycle through these "2-week _Minecraft_ phases".

	#let theme(body) = {
		set text(size: 1em, weight: "bold");
		body;
	}

	=== Attachment to Worlds and the Influence of Updates

	Many players reported a strong sense of identification with the worlds they built in _Minecraft_, especially as their playtime had been considerable.
	Players spoke about how they had crafted aquariums or architectural replicas in their worlds, or had simply engaged in just walking around to explore rare and unusual biomes.
	One player said:

	#quote[I get attached to every small thing in life, and _Minecraft_ worlds are no different.]

	It prevented them from leaving such a world, particularly if they had built something particularly elaborate, or if they had accumulated in-game memories with other players.
	One player explained:

	#quote[If the map was fun to explore and I built a cool house or had a dog, I feel bad leaving it behind.]

	Nonetheless, the vast majority of players said they would start a new world following a major _Minecraft_ update.
	These updates usually implement new content (such as biomes, structure, or mechanics) which are difficult or impossible to find in the player's old world.
	There wasn't an easy way to play with new content, so players said that it would take too long to reach new features if they stuck with their old world.
	One player explained:

	#quote[It's hard to find the new stuff that's added in the update in an already existing world. You have to travel out really far.]

	It's always the desire of experiencing the latest features of the game that override any attachment to the old worlds (they quit).
	The interviews showed that, despite the feeling of attachment to old worlds, players would quit them all the time for the sake of novelty.

	=== Challenge and Hardcore Mode

	If the players chose to play in hardcore mode, their approach to their worlds would be quite different from players who selected regular mode.
	In hardcore mode, the world deletes upon death, making the experience more adventurous since your death is final.
	Players in this mode said that they accepted the notion that they would lose it all if they died, saying:

	#quote[If it's a hardcore world, I already know that if I die, I'm going to delete the world immediately.]

	It encourages play of the "let's pretend" kind, with little emotional involvement and an attitude that, or "what's the worst that could happen?"
	Their far more successful and persistent tendencies were more consonant with the raw masculinity celebrated by scholars _Dead Turk_ and _Steam Train Demon_.
	Again and again, such players talked of making fresh hardcore worlds on an almost daily basis, dying within a few minutes at best of logging on to the new world.
	One said:

	#quote[My pattern is creating hardcore worlds, dying, and recreating them. I want to complete everything without dying, and if I can't, I start a new world.]

	This cycle of world-building and -abandonment is fuelled by the competing impulses of needing to survive and needing to perfect, as players try to achieve 100 percent completion without losing their worlds.
	In contrast to competitions, players who place greater value on creative expression and exploration would tend to stay in their worlds longer before abandoning their creations for newer versions or updates.

	=== Multiplayer vs. Singleplayer Dynamics

	The type of play (multiplayer or singleplayer) has a big influence on when and why players feel inclined to start new worlds.
	For two-thirds of our respondents, singleplayer was perceived as the type of play that made it more probable they would restart worlds.
	When playing alone, they had full editorial authority over their world, and they could walk away without affecting anyone else's experience.
	One player explained:

	#quote[I'm way more likely to start over in singleplayer because I don't have to worry about destroying the efforts of other players.]

	This allows players to experiment, blow things up and, if they want to, restart as often as necessary.
	In contrast to solo play, the multiplayer setting tends to prolong the life of a world.
	Several players said that they feel they have to take care of the other players who share a server with them.
	This made it harder for them to leave a world: #quote(block: false)[I feel somewhat responsible for the other guys on the server.]

	#quote[In multiplayer, it's easier to stick around because you're part of a group.]

	Multiplayer is also a committal factor:
	The socializing and the cooperation can keep players producing in the same world even when they'd like to start again;
	on the other hand, players can abandon feed-the-beast servers because some have lost interest and stopped playing, or are much further ahead in other ways.
	We won't edit that last quote.

	#quote[If people stop playing or progress too slowly, it kills the world.]

	=== The Role of Mods and Customization

	For many, the availability of mods or other customisation options becomes a major factor in determining when it's time to start over.
	Mods add new mechanics, challenges and structures that players can relish and enjoy by starting anew.
	One interviewee explained:

	#quote[Mods play a very important part in starting a new world... There are so many great mods that change the game in a good way.]

	Some mods, such as _Create_, add mechanical objects to the game;
	others introduce a new biome, another a boss, another a dungeon, and so on, adding content for players to explore as they go.
	Despite the option of modding, not every player uses mods as a supplement to the game or way of playing they have chosen.
	Some players maintain that when it comes to _Minecraft_, less is more, and they're not interested in using mods.
	The example of one player:

	#quote[Mods don't influence my decision to make a new world---I'm not interested in non-vanilla stuff.]

	This reflects the different ways in which modded and vanilla players have learned to respond to the actions or capabilities granted to them in _Minecraft_, giving rise to different styles of play.
	These different playstyles also give rise to different responses to world-ending gameplay events---whether through resetting or carrying on.

	=== Impact of Social Play and Community Engagement

	Social interaction and community are key to whether players stay in a world of leave it.
	Many said that making friends while they played was sometimes more important than the game itself. One player stated:

	#quote[It's not the world itself that's hard to leave---it's the people I played with on that server.]

	This investment in the social experience of the game can sustain a multiplayer world long after it would be abandoned in singleplayer:
	Playing isn't just about progressing a world but about playing with friends, building a social experience.
	But if, for example, friends leave, they will be more likely to leave the world in turn once the social group of the game starts to break up.
	One player said:

	#quote[Once the group stops playing, there's no point in sticking around. That's when I usually start a new world.]

	=== Progression Milestones and the Desire for a Fresh Start

	Several players reported having a common last hurrah, clearing "staircases" that mark hitting milestones (defeating the Ender Dragon; completing armor made of Netherite)---often the point at which they get bored of a world.
	As another player put it:

	#quote[Once I've done everything, it feels like time to start fresh.]

	These players feel they have done what they need to do in this world once they reach these thresholds, and there is no sense in continuing the great toil in the same world because it is no longer "new"---novelty is still desired.
	As another player commented:

	#quote[After I've finished my main goal, like building a big project or getting all the advancements, I usually feel like it's time to move on.]

	This cyclical nature of _Minecraft_ engagement is apparent when we consider that users begin with a huge drive to explore, build and go forward---eventually, they run out of interesting things to do and end up quitting and starting up a new world.

	= Discussion

	The study's findings can also be helpful in thinking broadly about the long-term retention issues faced by sandbox and open-world games in general, such as the wildly popular, tremendously influential _Minecraft_.
	Players report that they engage with the game because it offers them freedom of action: freedom to build, explore and create.
	But they also report that this very freedom eventually results in periods of disengagement as a result of having accomplished their short-term goals.
	When long-term goals or structured progression are undefined, a lack of motivation can set in when players reach certain milestones, such as dispatching player-controlled boss NPCs, engineering large building projects in the world, or simply gaining important skills or emerging victorious from exciting quests.

	This points to another significant design challenge to overcome when it comes to open-world games:
	The need for constant progression systems.
	Players in games such as _Minecraft_---where players set their own goals---often find that, after an initial period of play, they run out of personal goals or bored of doing the same tasks.
	Adding greater long-term challenges, layers of progression systems, or shifting world mechanics, for example, could provide an open-world game with reasons for people to keep playing past the point of survival or creating new worlds or creatures.
	Offering in-game achievements, for example, that must be played as a collective goal more committing than building a castle, reaching certain benchmarks that unleash content with greater depth (i.e. a narrative) or ongoing narrative strands that provide folk-tales or strung-out goals over time could keep a player in a game for longer periods.

	One of the most interesting findings from the study is that game updates exacerbate world abandonment:
	Updates can be a blessing and a curse.
	On the one hand, they revitalize the game by adding new content, but on the other hand, they contribute to world abandonment with most people feeling the need to start a new world to get the full experience of a substantial update.
	This is especially true for sandbox games, where new content (e.g. new biomes, new mechanics, etc.) that is introduced in an update might appear only in areas of the game world that the player hasn't fully explored yet.
	Here, developers could explore ways to add updates without forcing players to reset further into the world or start completely anew.
	For example, more extensive use of dynamic world generation or selective world updates---perhaps bringing new content closer to where players currently are---might reduce the need to reset over and over again.

	The study also points to the usefulness of multiplayer dynamics in maintaining engagement.
	While multiplayer can cause players to stick with a game for longer periods of time, thanks to the social bonds and shared goals it fosters, it also brings its own problems. When players on a multiplayer server advance at different rates, or simply lose interest in playing, the entire group can suffer.
	What new designs might be needed to help games better accommodate these divergent play styles and progression speeds?
	This might include systems that allow for internalizing some of the progression achieved by a slower-moving player in an open world multiplayer game without unfairly disadvantaging them, or at least rewarding them with a sense of accomplishment rather than just being forgotten.
	Or could the game lean more heavily on balanced mechanics that enable all the players to maintain their agency for longer, preventing fast progression players from running away with some form of the meta-game?

	Then there are mods.
	In fact, the seemingly unlimited possibilities for new gameplay that come with mods is a major reason why many players reset worlds to experiment with new content.
	This ability to keep the game fresh, however, may also provoke the same feedback loop of peak engagement followed by disengagement described above with regard to updates.
	So, for example, game-makers might better support mod continuity by providing official recognition for mods that allow players to integrate new content into an existing world without needing to reset.
	Paradoxically, providing this support could improve long-term engagement with both modded content and long-term world-building, by encouraging its frequency.

	Overall, this study illustrates how engagement in sandbox games like _Minecraft_ fluctuates in cycles, and serves as a jumping-off point for future work on the role that game design can play in retention.
	Providing better progression, improving how updates are incorporated into the experience, and adjusting the balance of authentication for multiplayer can all create more compelling 'little brother loops'---those interactions within games that create a feedback loop that keeps players hooked.
	The "2-week _Minecraft_ phase" points to the importance of balancing player freedom with more externally determined incentives in order to mitigate the burnout that can come with the increased autonomy afforded by open-world games.

	= Conclusion

	Qualitative survey and interview research supports the "2-week _Minecraft_ phase", indicating that abandonment of worlds follows the same cyclical pattern and is usually provoked by a similar set of factors after a period of intensive play.
	Many of these have to do with the fact that, while _Minecraft_'s sandbox-style gameplay enables creativity and exploration, it requires skills and design that can dry up after key goals are achieved via methods that are too simple.

	One discovery was that worlds in singleplayer tended to be restarted more frequently, as there is no sustained social motivation when playing on your own. The multiplayer experience tends to extend the lifespan of the world, more often than not.
	But having players running into each other isn't all rosy:
	Things can go wrong, and the study found that multiplayer worlds can also become stale, if there isn't a synchronized experience in terms of player progression, or if that excitement isn't there.

	Furthermore, the study found that game updates and mods were often a factor in the decision to opt for new worlds.
	While many players still expressed a desire to revisit older worlds, their weekly updating meant that players wanted to play with the new content as soon as it appeared.
	However, if players had stored wealth in older worlds, these world resets made it harder to access that new content---often leading to starting over.
	In this way, _Minecraft_'s ever-evolving nature, through its weekly updates and its modding community, encouraged both player engagement and regular bouts of world resetting.

	Taken together, the authors identify burnout, self-imposed goals and the prospect of new stuff as the main drivers of the cycle of engagement and disengagement. The authors also conclude that despite _Minecraft_'s "behemoth of a sandbox" that offers freedom and replayability, facilitating long-term engagement with the game will be an ongoing challenge.
	I hope that greater recognition of the micro-dynamics presented by the survey will open up prospects for designing more enduring engagement in games that rely on activities created by players, such as open-world titles that offer freedom in exchange for players creating their own content.
	Possible enhancements include more targeted progression systems or other types of gameplay-based rewards.

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
			What's your process when deciding where to settle in a new world?
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