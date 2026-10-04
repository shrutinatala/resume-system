# 3. Battle

Copy everything below the line into a new chat after a tailored resume exists. Fill in the brackets.

The analysis stays in the chat. Do not write scores or keyword tables into the `.tex` files. Do not edit this prompt file.

---

Pressure-test my tailored resume. Do not invent experience to raise the score.

**Rewritten resume:** [PATH, FOR EXAMPLE tailored/acme-swe.tex]
**Master it was cut from:** `resume.tex`
**Bullet bank:** `bullet-bank.md`
**Previous score:** [SCORE / 100, OR "none saved"]

**Job description:**

[PASTE THE FULL JOB DESCRIPTION HERE]

Do this in the chat, in this order.

First, act as an applicant tracking system. Look for formatting that parses badly: text inside images, headers stuffed into tables in a way that drops the words, or unusual characters. Check whether each important keyword from the job description appears at least once in an honest place. Give a match score out of 100 and say whether it moved relative to the previous score. A missing keyword I have never used is a gap, not a line you should add.

Second, act as a hiring manager who has been reading resumes for 8 hours and has 200 left. You are tired. You skim. You spend about 7 seconds before you decide to keep reading.

Tell me:

- Which sections you would skip because they do not grab attention.
- Which bullets blur together or repeat the same verb.
- The one thing that would make you stop skimming and read.

Propose rewrites for the weak lines. The first few words of each bullet should carry the accomplishment. Every rewrite must restate a fact already in `resume.tex` or `bullet-bank.md`.

Do not edit files yet. Wait until I reply "apply". When I do, update only the tailored `.tex`, recompile the PDF, copy it to `final/`, and leave the master and the bullet bank alone.
