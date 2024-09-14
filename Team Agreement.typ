#set page(paper: "us-letter")
#{
	let team_name = "[team name]"
	set align(center)
	set text(17pt, weight: "bold")
	text[
		Team Agreement of
		#set text(style: "italic");
		#team_name
	]
}

= Members

#let member(body, mail: "") = {
	show link: set text(font: "Consolas");
	[#body #link("mailto:" + mail)[<#mail>]]
}

- #member(mail: "vassilopoulos.al@northeastern.edu")[Alex Vassilopoulos]
	- Conduct most of the interviews.

- #member(mail: "fu.shenc@northeastern.edu")[Shencheng Fu]
	- Code the interview results.
	- Analyze the data.

- #member(mail: "wang.nian@northeastern.edu")[Nian'yi Wang]
	- Write documents and typeset them.

= Goals

Make clear the reason of why people keep getting tired of an old Minecraft savegame.

Perform reseach over the topic by conducting interviews/surveys with Mincraft communities.

Analyze the data collected from the interviews/surveys and draw conclusions.

Write a detailed report of it.

= Communication & Meeting

Regular communication via discord.


= Behavioral Expectations

- Hold each other accountable.

- Get work done on time.

- Reply promptly.

- Respect each other.

- Spread work appropriately.

= Decision Making & Conflict Resolution

Align with expertise on professional topics; otherwise vote.