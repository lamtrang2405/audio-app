# DramaFM Landing — Animation Preferences

Inspired by [quangminh.framer.website](https://quangminh.framer.website/) and Framer-style portfolios: scroll-driven reveals, staggered entrances, and smooth easing.

## Easing (CSS variables)

| Variable | Use |
|----------|-----|
| `--ease-out-expo` | Snappy UI (buttons, cards, hero stagger) |
| `--ease-out-quart` | Section and nav transitions |
| `--ease-out-back` | Optional bouncy CTAs |

## Durations

- **m** `0.5s` — Single elements (reveal items, tags, stats)
- **l** `0.7s` — Sections and hero reveal
- **xl** `1s` — Longer scroll/parallax

## Behaviors

1. **Page load** — Hero content staggers in: header → visual cards → eyebrow → title (2 lines) → subtitle → store buttons. Slight delay (~60–80ms) between elements.
2. **Scroll reveal** — Elements with `data-reveal` or `data-section` fade and slide up when they enter the viewport (rootMargin -8%). Sections use a subtle scale (0.98 → 1).
3. **Stagger children** — Inside a container with `data-stagger-children`, each child (e.g. `.stat`, `.tag`, `[data-reveal-item]`) gets an incremental delay (60–80ms) so they animate in sequence.
4. **Parallax** — Hero visual (3 cards) moves slightly on scroll for depth; on pointer devices, mouse position adds subtle `--px`/`--py` so cards shift with cursor.
5. **Sticky nav** — After 40px scroll, nav gets a blurred background and border.
6. **Marquee** — Infinite horizontal strip of story covers (duplicated in JS for seamless loop); animation pauses on hover.
7. **Story-tile stagger** — When the stories rail enters view, each card gets an incremental `--item-delay` (70ms) so they reveal in sequence.
8. **Reduced motion** — `prefers-reduced-motion: reduce` disables scroll/load animations, marquee, and CTA shimmer.

## HTML hooks

- `data-reveal` — Single element: fade + translateY when in view.
- `data-section` — Section wrapper: same as above + subtle scale.
- `data-stagger-children` — Parent of items that should stagger (used with `data-reveal` on same element).
- `data-reveal-item` — Child that gets `--item-delay` (e.g. story tiles). Set by `landing.js` when parent enters view.

All “in view” state is toggled by adding the class **`is-in`** via `landing.js` (IntersectionObserver).
