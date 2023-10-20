# ACED Big Daddy 4 Codebook

Shute, Hansen and Almond (2008; also Shute, Hansen & Almond, 2007)
describe an Assessment *for* Learning system called ACED (Adaptive
Content with Evidence-Based Diagnosis)[^1]. ACED was designed to both
assess knowledge of algebraic sequences and provide students with
practice about algebraic sequences. It offered two experimental tools
for assisting learning, both of which could be turned on and off by the
assessment administrator: (1) an adaptive sequencing tool which would
select items according to their estimated difficulty and (2) an
informative feedback tool which provides in depth explanations for
problems the student answers incorrectly.

Shute, Hansen and Almond (2008) describe a short field trial of ACED
using the portion of ACED relating to geometric sequences. There were a
total of 63 tasks in ACED which related to geometric sequences. Shute
recruited 268 9^th^ grade students from a local middle school (which did
not normally cover geometric sequences in its curriculum). The students
were randomly assigned to one of four groups:

1.  Adaptive sequencing of tasks and accuracy only (right/wrong)
    feedback on tasks.

2.  Adaptive sequencing of tasks and full (informative) feedback on
    tasks

3.  Linear sequencing of tasks and full (informative) feedback on tasks.

4.  Control (student did not use ACED and had an independent study
    period.)

> Most of the student using ACED completed all 63 tasks. Before using
> ACED the students took a 25-item pretest on geometric sequences and
> afterwards they took a 25-item posttest. In order to balance the
> difficulty, two forms were created: Form A and Form B. Half of the
> students (chosen randomly) got Form A as the pretest and Form B as the
> posttest, and this was reversed for the other half. The two test forms
> were then "equated" by scaling the pretest so that the students taking
> Form A and Form B (which should be equivalent because of the
> randomization) had the same mean and standard deviation. This same
> scaling was applied to the posttest results. The final data set
> reports the scaled pretest and posttest results.
>
> Students in one of the first three conditions (i.e., not the control
> group) have an additional score as well. This score, called BNscore,
> is the score coming out of the Bayesian network that was used to track
> student progress in ACED. As ACED is designed to be both an assessment
> and a learning environment, this score can be compared to the pretest
> and posttest scores. The Bayesian network score ranges from -1 (low
> proficiency) to +1 (high proficiency).
>
> During the experiment, students who were classified as English
> Language Learners (ELL) were allowed to have assistance from their
> teachers in translating the English language phrases into their native
> language. However, observers in the classroom noted that the ELL
> teachers were also often providing support on the mathematical
> concepts as well as the language.

## Columns and Code

**SubjID --** Subject ID, unique to each individual in the study.

**Sess \--** Session identifier, note that the first two digits
identifies the classroom, the second the student. Student numbers in the
90s represent control students.

**Classroom** -- The class from which the student was drawn. Note that
randomization is down within the classrooms.

**Cond_code** -- Study Condition: 1 = Adaptive Full Feedback, 2 =
Adaptive Accuracy Only, 3 = Linear Full Feedback, 4 = Control

**Seq --** Sequence condition: 2 = Adaptive, 1 = Linear

**FB** -- Feedback condition: 2 = Full, 1 = Accuracy Only

**Level_code --** Academic track of student:

**Gender --** Student gender self-report: 1=Female, 2=Male

**Race --** Student race, self-report: 1 = , 2= , 3= , 4= , 5= , 6= , 7=
, 8= (I'm still tracking down the coding key for this.)

**All_Items --** number of ACED items available to student, fixed by
study design either 63 or missing. Note that the next three columns
should sum to this number.

**Correct --** Number of ACED items the student got correct.

**Incorr *--*** Number of ACED items the student got incorrect.

**Remain --** Number of ACED items the student did not answer.

**ElapTime** -- The amount of time the student spent on ACED in days.

**TimeSpent** -- The amount of time the student spent on ACED in
minutes. Note there are some extremely low values, I'm not sure why that
was.

### Bayes Net Scores (Columns P through CB)

The next group of columns has a similar repeating pattern. These are the
output of the Bayesian network. The Bayesian network can be considered
as a black box which produces probabilities that each of the proficiency
variables is in a *High*, *Medium*, or *Low* state. If **xxx** is the
three letter code for the proficiency variable, each variable has the
following columns:

**pxxxH, pxxxM, pxxxL --** Probability that the proficiency variable is
in the High, Medium or Low state respectively. Note that these should be
between 0 and 1 and always add to 1.

**EAPxxx** -- Expected a posteriori (after scoring items) value. This is
the expected value for the proficiency variable assigning the numeric
values *Low =0, Medium = 1, High =2.* It should range from 0 to 2, with
0 corresponding to low and 2 to high.

**MAPxxx --** Maximum a posterior value. This is the state with the
highest probability, *Low =1, Medium = 2, High =3.*

Here are the proficiency variables:

**sgp --** Solve Geometric Problems (this is the highest level variable
in the model, and hence the various sgp statistics should be taken as
the overall score.

**arg --** Use Algebraic Rules (Geometric). Note this is an intermediate
variable containing Recursive (rec) and Explicit (exp).

**cr --** Find Common Ratio.

**dt --** Distinguish Types of Series.

**exa --** Work with examples.

**exp --** Use Explicit Rules.

**ext --** Extend the series.

**ind --** Induce Rules. (Note, this is the highest level "rule"
variable in the model.)

**mod --** Use Models.

**rec --** Use Recursive Rules

**tab --** Use tables.

**ver --** Use verbal Rules.

**pic --** Use pictures

### ACED Item Responses (CO through EM)

The items used internally to ACED are all scored dichotomously. They are
given names according to the following pattern:
**t***\[Skill1\]\[Skill2\]\[\...\]\[Difficulty=1,2,
or3\]\[Variant=a,b,c,...\]***.***\[Verstion=1\].*

Thus, tVerbalRuleExtendModelGeometric2a.1, uses the Verbal Rule, Extend,
and Model Skills. It is medium difficulty (2), and is the first variant
with that configuration. A complete Q-matrix is given at
<https://ecd.ralmond.net/ecdwiki/ACED/ACED/>[.]()

## Pretest and Posttest (EN through FL)

Two balanced forms were created Form A and Form B. The students were
randomized (separately from the treatment assignments) to receive either
Form A as pretest and Form B as posttest, or the other order. This meant
that the groups receiving Form A and Form B as pretest were randomly
equivalent, and hence were linearly equated. The same equating functions
were applied to the posttest.

**Form_Order --** randomly assigned form order, 1 = A → B, 2 = B → A

**PreACorr, PostBCorr, PreBCorr, PostBcorr --** Raw score (number
correct) on pretest or posttest. Note two values are missing for each
student.

**PreScore, PostScore --** Raw pretest or posttest score, this is
whichever of the two scores is not missing. These are not equated.

**scale_prea, scale_preb, pre_scaled --** Scaled pretest score. The
first is the scaled score on the particular form, the second is the
scaled score on the form the student took.

**scale_posta, scale_postb, post_scaled --** Scaled posttest scores.

**gain_scaled --** post_scaled -- pre_scaled

**Flagged --** Presumably an indication of some irregularity. I do not
have notes. Note that two of the three flagged students do not have
pretest or posttest scores.

## References

These are data that were gathered by Val Shute & others as part of
National Science Foundation Grant No. 0313202. The data collection and
analysis are described in:

Shute, V. J., Hansen, E. G., & Almond, R. G. (2008). You Can\'t Fatten A
Hog by Weighing It - Or Can You? Evaluating an Assessment for Learning
System Called ACED. *International Journal of Artificial Intelligence in
Education*, *18*(4), 289-316. Retrieved from
<http://www.ijaied.org/iaied/ijaied/abstract/Vol_18/Shute08.html>

Shute, V. J., Hansen, E. G., & Almond, R. G. (2007). *An Assessment for
Learning System Called ACED: The Impact of Feedback and Adaptivity on
Learning*. ETS. Retrieved from
<http://www.ets.org/research/researcher/RR-07-26.html>

More detail, including the complete Bayesian network model used to score
ACED can be found at <https://ecd.ralmond.net/ecdwiki/ACED/ACED>.

[^1]: ACED is the brainchild of Dr. Valerie Shute, now at FSU (the ACED
    work was done while she was at ETS). It was supported by a large
    cast including: Aurora Graf, Eric Hansen, Jody Underwood, Larry
    Casey, Steve Landau, Peggy Redman, Waverly Van Winkle, Juan-Diego
    Zapata-Rivera and Russell Almond (also now at FSU). ACED development
    and data collection was sponsored by National Science Foundation
    Grant No. 0313202. More information about ACED is available at the
    ECD Wiki: <http://ecd.ralmond.net/ecdwiki/ACED/ACED>.
