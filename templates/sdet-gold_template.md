# UX & QA Black-Box Review

*(SDET-Oriented Template)*

> **Scope:** UI-only, black-box review
> **Goal:** Identify UX, accessibility, and reliability risks through observable behavior
> **Constraints:** No code access, no assumptions about internal implementation

---

## 1. System Overview

**System Name:**

> *Instruction:* Use the product or site’s public-facing name only.

**Public URL:**

> *Instruction:* Entry point reviewed. If multiple URLs were tested, list primary one.

**Review Type:**
Black-box (UI-only)

**Date:**

> *Instruction:* Date review was conducted (important for time-based changes).

**Reviewer Perspective (Primary):**
*Select the perspective(s) you are intentionally reviewing from. Do not select all unless justified.*

* [ ] Recruiter
* [ ] Hiring Manager
* [ ] End User
* [ ] Client

> *Guideline:* Your observations and risks should align with the selected perspective(s).

---

## 2. Intended Purpose (Observed)

Based on UI, content hierarchy, navigation, and calls-to-action, the system appears intended to be:

* [ ] Personal portfolio
* [ ] Client-facing storefront
* [ ] Product demo
* [ ] Hybrid (unclear)

> *Instruction:* Select what the system **appears** to be — not what it claims to be.

### Observation

**Key Question:**
Does the system’s primary purpose become clear within **5–10 seconds** of landing?

**Observed Outcome:**

> *Instruction:* Answer based on first-load experience only.
> Avoid explanations here — state what is or is not clear.

**Risk (if any):**

> *Instruction:* Briefly state the risk of unclear purpose (e.g. hesitation, drop-off, mistrust).

---

## 3. First Impression & Landing Experience

### Positive Signals

> *Instruction:* List observable strengths only.
> Avoid praise language — focus on what works and why it matters.

* …
* …

---

### Issues / Risks

> *Instruction:* Each bullet should describe **one issue**.
> If possible, attach evidence (screenshot/video reference).

* Excessive animations competing for attention
* Cognitive overload on initial load
* Unclear primary call-to-action

> *Optional:*
> 📸 Evidence: `hero-initial-load.gif`

---

### QA Risk Level

*Select one based on **likelihood × impact**.*

* [ ] Low
* [ ] Medium
* [ ] High

> *Guideline:*
>
> * Low → noticeable but unlikely to block user goals
> * Medium → may cause hesitation, confusion, or friction
> * High → likely to block conversion, accessibility, or trust

---

## 4. Navigation & Interaction

### Observed Behavior

> *Instruction:* Describe what happens, not whether you like it.

* Internal navigation consistency
* External links opening behavior (same tab vs new tab)
* Browser or breakpoint differences (desktop vs mobile)

---

### Issues / Risks

> *Instruction:* Focus on predictability and state management.

* Links opening inconsistently
* Page state confusion
* Unexpected reloads or context loss

> 📸 Evidence: `nav-mobile-desktop-diff.png`

---

## 5. UX & Accessibility Signals

> *Note:* This is **not** a full accessibility audit.
> These are **risk signals**, not compliance claims.

### Accessibility Observations

* Color contrast
* Motion sensitivity (animations, auto-play)
* Scroll behavior
* Readability and content density

---

### Potential Risks

> *Instruction:* Tie observations to user impact.

* Motion fatigue
* Accessibility guideline exposure
* Poor focus hierarchy

> *Optional Evidence:*
> 📸 `hero-contrast-issue.png`
> 🎥 `auto-animation-loop.gif`

---

## 6. Error Handling & Edge Cases

### Observed

> *Instruction:* Note absence as well as presence.

* Broken or misleading links
* Unexpected transitions
* No visible error or empty states

---

### QA Insight

> *Guideline (do not rewrite every time):*
> Error states are part of UX and must be visible, predictable, and testable.

---

## 7. QA Risk Summary

> *Instruction:* Summarize risk at a system level.
> Keep this table consistent across all reviews.

| Area                   | Risk                |
| ---------------------- | ------------------- |
| Purpose clarity        | Low / Medium / High |
| Navigation             | Low / Medium / High |
| Accessibility          | Low / Medium / High |
| Performance perception | Low / Medium / High |

---

## 8. Recommendations (High-Level)

> *Instruction:*
>
> * No redesigns
> * No implementation details
> * Focus on direction, not solutions

* Clarify system purpose early
* Reduce concurrent animations
* Simplify visual hierarchy
* Standardize link behavior

---

## 9. Final Assessment

> *Instruction:* 4–6 lines maximum.
> Answer: **“Should someone be concerned?”**

This system demonstrates technical capability, but presents UX and QA risks related to clarity, cognitive load, and accessibility. Addressing these areas would likely improve user confidence, engagement, and conversion outcomes, particularly for the intended audience.

---

## Evidence Appendix (Optional but Recommended)

> *Guideline:*
> Place screenshots and videos here or link to them.
> All filenames should be descriptive and reproducible.

```
/evidence
 ├─ hero-initial-load.gif
 ├─ nav-mobile-desktop-diff.png
 ├─ project-filter-load-delay.gif
 └─ contrast-text-background.png
```
