# 1. Consolidate

Copy everything below the line into a new chat. Attach every old resume you want merged (PDF, Word, Google Doc export, or `.tex`). Do not commit those files.

---

Build my consolidated resume and bullet bank in this repo.

**Template to copy from:** `template/resume.tex` and `template/bullet-bank.md`
**Write the master resume to:** `resume.tex` (overwrite the example)
**Write the bank to:** `bullet-bank.md` (overwrite the example)

**Sources:** every resume and note I attached in this chat. If I also name files already in this folder, read those too. If I attached nothing, ask me for each school, role, project, leadership entry, and skill. Do not keep the placeholder person. Delete First Last, Electronics Company, Startup, Inc, Gym Reservation Bot, Ticket Price Calculator App, Transaction Management GUI, and the Fraternity block once my real content is in place.

**Rules:**

- Do not invent employers, titles, dates, locations, tools, metrics, awards, coursework, or citizenship.
- If two sources disagree on a date, title, or number, quote both and ask me which is true. Do not keep the larger number.
- The master may be longer than one page. Include every true role, project, and leadership entry. Cutting happens later, per job.
- A role I have not started stays header-only. Do not write bullets for it.
- Keep Jake Gutierrez's preamble, commands, and section order. Use `\resumeSubheading`, `\resumeItem`, and `\resumeProjectHeading`.
- A subheading is `\resumeSubheading{Organization}{Dates}{Role or degree}{Location}`. Dates sit on the right of the bold line. Location sits on the right of the italic line.
- A project heading is `\resumeProjectHeading{\textbf{Name} $|$ \emph{Stack}}{Date}`.
- Keep the phone, email, LinkedIn, and GitHub icons in the header (`\faPhone`, `\faEnvelope`, `\faLinkedin`, `\faGithub`).
- Coursework stays in the `Relevant Coursework` section, in the four-column list. Do not move it under Education.
- Each bullet follows: accomplished [X] as measured by [Y] by doing [Z]. Bold the result or metric a skimmer should see.
- No em dashes in prose. Do not use `---` or `—`. Date ranges may use `--`.
- Do not start two bullets with the same verb.
- The skills section on the master is the full pool, not a trimmed list.
- In `bullet-bank.md`, keep these headings: Always keep, Safe to cut for one page, Work Experience, Leadership, Projects, Coursework variants, Skills bank.
- Under each bullet, store alternate sentences only when they describe the same true work. Pull older wording from my past resumes when it is still accurate.
- Leave "Always keep" empty unless I named roles that must appear on every application.
- Put true-but-secondary items under "Safe to cut for one page".

When you finish, tell me what you merged, what you left out because it was not supported, and every conflict I still need to answer. Then compile with `make master` and say whether it built.
