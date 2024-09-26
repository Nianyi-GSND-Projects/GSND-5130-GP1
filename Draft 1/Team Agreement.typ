#set page(paper: "us-letter")
#let team_name = "[team name]"
#{
	set align(center)
	set text(17pt, weight: "bold")
	text[
		Team Agreement of
		#set text(style: "italic")
		#team_name
	]
}

#text(style: "italic")[#team_name] is group \#2 for group work \#1 of GSND 5130;
all members of which are randomly assigned by the professor.
Under the group work requirements, and for establishing a behavior synchronization amongst the group members, this team agreement is drafted and proposed to be applied on all members.
This agreement takes effect from the day it is signed by all members, and automatically ends on the day which the final task of the group work is accomplished.

= Members

#let member(body, role: "", mail: "") = {
	show link: set text(font: "Consolas")
	[#body, #role #link("mailto:" + mail)[<#mail>]]
}

- #member(
	role: "Lead Interviewer",
	mail: "vassilopoulos.al@northeastern.edu"
	)[Alex Vassilopoulos]
	- Design the interview process for the research.
	- Conduct and take written records of the interviews.

- #member(
	role: "Data Analyzer",
	mail: "fu.shenc@northeastern.edu"
	)[Shencheng Fu]
	- Code the interview results into categories.
	- Analyze the data and draw conclusions from them.

- #member(
	role: "Report Editor",
	mail: "wang.nian@northeastern.edu"
	)[Nian'yi Wang]
	- Write the assigned documents and research reports.
	- Typeset the documents with good readability.

= Goals

With this project being the very first group work of the GSND 5130, all team members hope to practice and establish a basic understanding towards a basic framework of an academical research.

During the period of this project, the team will explore the causes of why Minecraft players often get tired of new savegames after a short period of time.
A qualitative research on the topic will be conducted, with the classical methods including in-person interviews and/or online surveys.

Each team member is assigned with a role for the project.
Alex, being a former student in journalling, will take the role of the lead interviewer.
He will design and conduct most of the interviews with the subjects and taken written records of the interview results.
Shencheng will then perform qualitative analyzing methods on the results, code them into categories and summarize out clear conclusions.
Lastly, Nianyi will collect all the information and typeset them into a final research report, due to his previous experience in typesetting and academical writing.
Hopefully, each member could gain experiences of coorperating on a formal research and use them in future academical careers!

= Behavioral Expectations

To ensure a smooth cooperation between team members, the following behavioral expectations are to be obeyed by every members:

- Respect each other.
	Treat each other as equal co-workers.
	Talk to team members as you would to other people.
	Never put irresponsible blames on any members, including yourself.

- Reply promptly.
	Teamwork affairs are expected to be done in an coorperative way.
	Promptly replying to team members' messages is a precondition of cooperation.
	Don't let your teammates hang.

- Get work done on time.
	Everybody should be responsible for their part of works.
	You need to finish your works on time regularly to be reliable.

- Hold each other accountable.
	A team member's responsibility not only includes speed, but also quality.
	If you find someone is not doing their work well, feel free to point it out,
	but only with solid reasons.

- Spread work appropriately.
	Do not fight for credits that you don't earn.

= In-team Communication

- For regular communication, a discord group chat is set up.
	All quick discussions over simple topics go on here.

- For complex topics, use discord voice calls.

- For even more complex or important topics, an in-person meeting is required.
	Such meetings should be planned ahead for at least one day, at an approriate time when all attending members are available.
	Meeting plannings could go in the discord server, via email, or any other effective ways.

- Unnecessary phone calls should be avoided, especially at nights.

= Decision Making

- Important decisions should be made in an in-person meeting and only when every members agreed.

- It is allowed to change a previous team decision, but the proposing member must provide sufficient reasons, and other members should be given sufficient time and freedom to decide whether agree or not.

- In case a conflict arises, the following method should be used for final decision:
	- On professional topics, align with the member who is most skilled in the field;
	- Otherwise, vote.

= Signatures

#{
	set align(center)
	set text(size: 14pt)

	let sig_length = 10em
	let placeholder(length: 1em) = { box(width: length, stroke: (bottom: 0.5pt)) }
	let sig_line() = { placeholder(length: sig_length) }
	let sig_date() = {
		box(stroke: none)[
			#set align(center)
			#placeholder(length: 2em) / #placeholder(length: 2em) / #placeholder(length: 4em)
		]
	}

	v(2em)
	table(columns: 3, stroke: none, row-gutter: 1em,
		sig_line(), sig_line(), sig_line(),
		sig_date(), sig_date(), sig_date(),
	)
}