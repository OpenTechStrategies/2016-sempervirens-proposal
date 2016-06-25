# Sempervirens -- minimally invasive usage tracking for open source software sustainability

We propose to create a system that would track the volume and pattern of use of
open-source software for science (OSSS), with a focus on the Python scientific
software stack.

OSSS is at the core of modern data-driven research, but users, developers and
funders of OSSS do not have reliable data about the volume and patterns of use
of the tools.

Currently, we rely on metrics such as rate of download of the software, and the
rate of citation of the articles describing the software. While these metrics
provide some information, they are inaccurate, and provide only some fuzzy
information about usage rates, and not about usage patterns: where is the
software used? In what computational context? What parts of the code is used?

Having more accurate and more fine-grained information would fulfill several
different needs:

- Developers and funders need information about the return on their investment  
  in the development of the software.

- Developers need information about patterns of use to guide development,
  maintenance and support efforts.

- The scientific community needs information about the different options that exist and about the health and well-being of different software projects, so that investment in using sustaning them can be objectively assessed.

- Some information about where users are located can help guide strategies for sustaining the software. For example, knowing that certain institutions and certain countries contain many users of software serves as an argument for participation of these institutions and countries in sustaining the software.

But tracking the actual usage of software is a hard. This is because tracking
software use is at the intersection of technical, legal and social issues.
Primary to these issues is the concern for the privacy of software users.
Effective tracking of software use probably needs to separately track the use by
different individual users. At the same time, the privacy of these individual
users needs to be strictly maintained. Individual users need to be given control
over whether their use of software is being tracked. That is, they need to be
given the option not to be tracked, if they are not interested.

Exploring this complex intersection, and promoting the development of such a
system while maintaining the rights of everyone involved (software users,
developers, and other stakeholders) requires the participation of people with
many different sets of expertise. It is this initial exploration that we propose
to fund through this proposal.

We propose a process whereby a consulting firm (Changeset Consulting) would
serve to manage the process of defining the requirements, coordinating the
efforts of other participants in the process, towards the goal of producing a
set of principles to guide the technical developments. CC would also write
high-level principles for reference by all other stakeholders, and will manage
the development of end-user-focused documentation.

Changeset Consulting is an appropriate choice for this task, because it has deep
expertise in the management and consulting on many aspects of open-source
software development. The principal, Sumana Harihareswara, an open-source
software contributor herself, has the required combination of technical expertise and
management experience, including experience with a range of different
open-source communities, such as the Wikimedia Foundation and GNU Mailman.
[Sumana: feel free to add/edit/delete/etc.]

For this work, we estimate about 150 hours. Together with a small travel budget,
that would amount to $20k for Changeset Consulting.

Developing a website that describes the project, and informs the community about
the ongoing conversation, through a communications sub-contractor (web-developer, design, etc.) would require an additional $30k.

To advise on legal aspects of the project, we would need to contract the
services of legal experts. They should research the legal issues related to the
proposed system and define the processes, and systems that need to be put in
place in order to maintain the legal rights of different stakeholders. This
research will be integrated into the requirements specification, and end-user
documentation by CC. Some of the participants in this process which would need
to be paid for their work on this. For 60 hours of legal advice @ $200/hr, we
estimate an additional $12k for this.

A rough schedule for this development:

## Phase I: [approximately ten weeks] Changeset does research, moves the
NumFOCUS formalization along, sets up convenings at SciPy and other relevant meetings,
builds the legal team and gets relevant stakeholders onto the
sempervirens-discuss mailing list, and gets advice to answer the questions:
* what countries' privacy laws apply here?
* what level of ongoing social and technical maintenance should we build
capacity for?

Deliverable: see "Phase I" milestone (per deliverables outline below)

Cost: maybe $14K, combining some Changeset costs & some legal costs

## Phase II: [approximately four months]: Changeset works with webdev subcontractor, legal team,
and the Jupyter & NumPy teams

Deliverable: see the "First Light" milestone (per deliverables outline below)

Cost: ~$48K, including Changeset, legal, and developer costs

## Phase III: To be determined; future grant

Deliverable: see the "Final" milestone (per deliverables outline below)


# Deliverables outline:

## Milestone: Phase I
- NumFOCUS relationship formalized or clearly about to be formalized
- Legal team in place
- Nation-level and future project resourcing scope tightened
- Clear path forward for the consensus process & community approval
- Technical roadmap that NumFOCUS, Jupyter & NumPy team find feasible

## Milestone: [First Light](https://en.wikipedia.org/wiki/First_light_%28astronomy%29) 

- Public distribution
  - Data aggregation pipeline
  - Develop tools for presenting public data (e.g. website where you can enter a query and see pretty graphs)
- Sustainability
  - Develop long-term funding strategy
  - Formalize operations

## Milestone: Final 

- Technical
  - Python client library
    - Code
    - Tests
    - Usage docs for developers
  - "How to write a client library for your language"
    - Protocol specification
    - Implementation tips
  - Data ingestion server
    - Code
    - Tests
    - Deployment glue (CI, docker, etc.)
    - Operations glue (monitoring, logging, etc.)
    - Backup strategy
- Process
  - High-level principles (inspiration: https://www.mozilla.org/en-US/privacy/principles/)
  - More detailed decisions on what kind of data we do and don't collect (e.g. IP addresses, opt-outs)
  - Formal "legal code" privacy policy
  - Decisions on what aggregate data we make public
  - Decisions on what conditions we require before allowing people access to more-raw data
  - Policy for onboarding new projects doing data collection (e.g. getting confirmation that they've read the rules, avoiding namespace clashes between Python and R projects, ...)
  - Policy for handling cases where we do end up with sensitive data
  - Formation of stewardship committee to manage above
  - Formalization of relationship with NumFOCUS
- Communication
  - Website describing the project
  - Clear end-user-focused document about what we do and don't collect
  - Language for requesting consent (linking to ^^ for more details)
  - Clear developer-focused document about what rules they have to follow when collecting data
  - Clear data-consumer-focused document about what they're allowed to do with the public aggregate data (possibly "anything they want" but either way we should say), documenting the process of getting access to more-raw data
