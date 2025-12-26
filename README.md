
PatrickFruitStand 🍎🍌🍓

PatrickFruitStand is a small SwiftUI showcase project designed to demonstrate mid-to-senior level iOS concepts in a focused, inspectable way.

This project is not intended for production or App Store release.
Its purpose is to act as a living reference for architecture decisions, SwiftUI patterns, and reasoning that frequently come up in real-world iOS work and technical discussions.

Many of the ideas explored here are also expanded on in LinkedIn posts and short write-ups.

⸻

What this project is for

This repository exists to:
	•	Showcase how and why certain SwiftUI patterns are used
	•	Demonstrate architecture choices that scale beyond toy demos
	•	Provide concrete examples to reference in technical discussions
	•	Serve as a companion to written explanations and posts

This is intentionally small, focused, and readable.

⸻

Concepts demonstrated

SwiftUI + MVVM separation

The project follows a clear separation of concerns:
	•	Views focus on layout and intent
	•	ViewModels own state, transformation, and logic
	•	Views do not perform business logic directly

Example structure:

Landing/
  View/
    FruitHeroCarouselView.swift
    FruitBoxGridView.swift
    FruitPromoCardView.swift
  ViewModel/
    FruitLandingViewModel.swift

This keeps SwiftUI declarative while avoiding logic creep inside view bodies.

⸻

Coordinator-style app flow (SwiftUI friendly)

Even though SwiftUI reduces the need for classic UIKit coordinators, this project still demonstrates a Coordinator-style ownership model at the app level.

Coordinators/
  FruitAppCoordinator.swift

The coordinator is responsible for:
	•	App-level flow ownership
	•	High-level navigation decisions
	•	Keeping views unaware of global routing concerns

This mirrors patterns used in larger SwiftUI apps where navigation must remain testable and evolvable.

⸻

Intent-driven views, not “magic SwiftUI”

Views communicate intent, not outcomes.

For example:
	•	User interaction signals flow outward
	•	ViewModels decide what happens next
	•	State updates flow back down

This avoids the common SwiftUI pitfall of burying side effects inside onAppear, onTapGesture, or deeply nested closures.

⸻

Readability over cleverness

This project intentionally favors:
	•	Explicit naming
	•	Predictable data flow
	•	Simple view composition

Over:
	•	Over-abstracted generics
	•	“Look how few lines this is” tricks
	•	Framework-driven magic that hides intent

The goal is clarity under pressure, not brevity for its own sake.

⸻

Portfolio-friendly, discussion-ready code

Every file here is meant to be:
	•	Read in isolation
	•	Discussed in an interview
	•	Referenced in a post without extra context

This is why you will not see:
	•	Premature optimization
	•	Unnecessary persistence layers
	•	Networking abstractions without purpose

Those topics are better introduced deliberately, not by default.

⸻

What this project intentionally does NOT include
	•	App Store polish
	•	Analytics
	•	Production-grade persistence
	•	Full error handling pipelines
	•	Exhaustive UI states

Those concerns matter in real apps, but they distract from the architectural conversations this repo is meant to support.

⸻

How this repo is meant to evolve

This project may grow over time to include:
	•	Additional SwiftUI patterns
	•	Focused feature spikes
	•	Refactors tied to specific write-ups
	•	Comparative approaches to the same problem

Changes are expected to align with topics discussed publicly, not roadmap commitments.

⸻

Related discussions

This repository pairs with short technical reflections and breakdowns shared on LinkedIn, often covering:
	•	SwiftUI mental models
	•	Architecture tradeoffs
	•	Interview-relevant patterns
	•	Refactoring decisions and why they matter

Think of this repo as the code half of those conversations.

⸻

Final note

If you are reviewing this project:
	•	Focus on intent, not completeness
	•	Read it the way you would read a teammate’s pull request
	•	Ask “why is this shaped this way?”

That question is the point.

