# Resume system

Keep one honest master resume. Cut a one-page version for each job. Pressure-test that page before you submit it.

This repository is the blank system: a LaTeX layout, a bullet-bank format, and three prompts. The example person in `template/` is fiction. Your real resume stays on your computer. `resume.tex`, `bullet-bank.md`, `tailored/`, and `final/` are gitignored so a later commit does not publish them.

The page layout is adapted from [sb2nov/resume](https://github.com/sb2nov/resume) by Jake Gutierrez, under the MIT license.

## What you need

- Git
- `pdflatex` (MacTeX on macOS, or TeX Live)
- A chat or coding agent that can read this folder (Cursor works)

Check LaTeX with:

```bash
pdflatex --version
```

## How the pieces fit

| File | What it is |
| --- | --- |
| `template/resume.tex` | Blank layout plus fictional sample content |
| `template/bullet-bank.md` | The same sample, stored as a menu of bullets |
| `resume.tex` | Your consolidated master. It may be longer than one page. You create this. |
| `bullet-bank.md` | Every true bullet you have, plus older wording worth reusing |
| `tailored/` | One `.tex` and PDF per application. Each must be one page. |
| `final/` | The PDF you upload |
| `prompts/01-consolidate.md` | Merge old resumes into the master and the bank |
| `prompts/02-tailor.md` | Cut a one-page resume for one job |
| `prompts/03-battle.md` | Score that page, then skim it like a tired reader |

New facts are added to the master and the bullet bank first. A company version only chooses and compresses what is already written down.

## 1. Create your private working files

```bash
git clone https://github.com/shrutinatala/resume-system.git
cd resume-system
cp template/resume.tex resume.tex
cp template/bullet-bank.md bullet-bank.md
mkdir -p tailored final
```

Open `resume.tex`. The name, phone, email, school, jobs, and projects are placeholders. You will replace them in the next step.

Do not run `git add -f` on `resume.tex`, `bullet-bank.md`, `tailored/`, or `final/`.

## 2. Create the consolidated resume

Collect old resumes (PDF, Word, a Google Doc exported as PDF, old `.tex` files). Attach them in chat. Keep those originals out of git.

Open a new chat in this folder. Copy everything below the horizontal rule in [`prompts/01-consolidate.md`](prompts/01-consolidate.md) and paste it as your message.

The agent should:

- Replace the example with your school, roles, projects, leadership, and skills in `resume.tex`
- Copy those same facts into `bullet-bank.md`, including older sentences from past versions when they are still true
- Ask you when two resumes disagree on a date, a title, or a number

If you have no old files, either edit `resume.tex` yourself or tell the agent your history one role at a time. Say "do not keep the example" so Alex Rivera does not survive into your file.

Before you move on, read the master and check:

- You can defend every number in an interview
- A job you have not started is a header with no bullets
- The file is allowed to run past one page

Compile it:

```bash
make master
```

That runs `pdflatex` twice and writes `resume.pdf` next to `resume.tex`. Open the PDF. Overflow on the master is fine.

## 3. Lock the bullet bank

Skim `bullet-bank.md` and fix it by hand if the agent was vague.

- Under each role, keep the bullet you like best, then any alternate sentence that states the same work
- Under **Always keep**, list roles or projects you want on every application
- Under **Safe to cut for one page**, list true items that should drop first when a page is full
- Skills are the full set you have used. Later prompts reorder this list. They should not add tools.

An alternate sentence is not a place to introduce a new metric.

## 4. Tailor one application

Open a new chat. Copy everything below the horizontal rule in [`prompts/02-tailor.md`](prompts/02-tailor.md). Fill in the company, the role, the location, and paste the full job description. Paste application questions there too if you have them.

You should get:

- `tailored/acme-swe.tex` (the names follow the company and role you typed)
- `tailored/acme-swe.pdf`
- `final/Your Name - Acme SWE.pdf`

What the tailor may change:

- Which roles, projects, and leadership blocks appear
- The order of skills and coursework
- Which stored bullet or alternate sentence is used
- Which number is bold

What it may not change:

- Employers, titles, dates, tools, or metrics that are not already in the master or the bank
- Project wording, unless you explicitly asked for a rewrite
- Headers for jobs you have not started

Read the PDF. If a line is not true, delete it in the chat and say which fact was wrong.

## 5. Pressure-test the draft

Open another new chat. Copy everything below the horizontal rule in [`prompts/03-battle.md`](prompts/03-battle.md). Point it at the tailored file and paste the same job description.

You get two reads:

1. An applicant-tracking pass: parse issues, missing keywords, a score out of 100
2. A hiring-manager pass: about seven seconds, what gets skipped, what repeats, what would make them keep reading

The rewrites stay in the chat until you reply `apply`. Accept a line only when it still matches the bullet bank. A higher keyword score is not a reason to add a tool you have not used.

## 6. Save the file you will submit

Upload the PDF in `final/`. The name looks like `Alex Rivera - Northwind SWE.pdf`, with your name and the company.

Leave the master alone unless you are correcting a fact or adding new work. When something new is true, add it to `resume.tex` and `bullet-bank.md`, then tailor again.

## 7. Repeat for the next company

Steps 4 through 6 are the whole loop.

If one company posts several roles, put a short role slug in the file name: `tailored/acme-ios.tex` and `tailored/acme-backend.tex`. A single shared `acme.tex` gets confusing once the second posting shows up.

## Optional dry run

You can watch the loop once before you trust it with your history.

1. Leave the example content in place.
2. Use [`examples/sample-job-description.md`](examples/sample-job-description.md) as the job description in steps 4 and 5.
3. Confirm a one-page PDF appears under `tailored/` and `final/`.
4. Delete that dry-run output.
5. Replace the example by doing steps 2 and 3 for real.

Do not submit the example resume anywhere.

## Rules the prompts enforce

- Tailored resumes are one page. The master does not have to be.
- Bullet shape: accomplished X, as measured by Y, by doing Z.
- Bold the result someone should see while skimming.
- Do not start two bullets with the same verb.
- No em dashes in sentences. Date ranges may use `--` inside LaTeX.
- Coursework is labeled `Relevant Coursework:`.
- Truth beats a closer keyword match.

## Compile without Make

From this folder, after `resume.tex` exists:

```bash
pdflatex -interaction=nonstopmode resume.tex
pdflatex -interaction=nonstopmode resume.tex
```

For one application:

```bash
make tailored FILE=tailored/acme-swe.tex
```

`make clean` removes LaTeX junk (`.aux`, `.log`, `.out`) and leaves your PDFs.

## Credits

Layout adapted from [sb2nov/resume](https://github.com/sb2nov/resume) by Jake Gutierrez, MIT License. See `LICENSE`.
