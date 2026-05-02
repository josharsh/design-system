# design-system

A Claude Code skill that reads your project and generates a complete design system — tokens, colors, spacing, components, and library choices — all flowing from one coherent design philosophy matched to your product's personality.

A design system is not a collection of random decisions. It's a personality expressed through variables.

## Install

```bash
/plugin marketplace add design-system
```

Or manually:

```bash
./install.sh
```

## What It Does

Most design systems are assembled by copying tokens from other products. This skill starts from WHO your product is and WHO uses it, then derives every decision from that identity.

It works in phases:

1. **Discovery** — reads your project to understand purpose, audience, domain, tech stack
2. **Interview** — asks one quick round of questions (mood, density, dark mode, color preferences)
3. **Philosophy** — describes how your design system should FEEL in plain language, gets alignment before generating anything
4. **Generation** — produces the full token set: colors, spacing, shape, shadows, typography, motion, plus component library and icon recommendations

Everything connects. The same philosophy that says "this is a serious enterprise tool" produces tight spacing, muted colors, sharp radii, minimal animation, and a recommendation for shadcn/ui over Chakra.

## Commands

| Command | What it does |
|---------|-------------|
| `/design-system` | Full flow: interview → philosophy → tokens |
| `/design-system tokens` | Skip interview, generate token values (assumes direction is set) |
| `/design-system palette` | Focus specifically on color system |
| `/design-system components` | Component library + icon set recommendations |

## The Five Design Dimensions

Every design system sits somewhere on these spectrums:

- **Density:** Spacious ←→ Compact (how much breathing room)
- **Mood:** Playful ←→ Serious (shapes, colors, animation character)
- **Temperature:** Warm ←→ Cool (gray tint, accent earthiness)
- **Richness:** Minimal ←→ Expressive (number of colors, gradients, illustration)
- **Elevation:** Flat ←→ Layered (shadows vs borders vs tonal separation)

These five axes drive every downstream decision — from border-radius values to component library choice.

## What You Get

A complete, copy-pasteable design system:

- **Color system** — primitive scale + semantic tokens + dark mode variant
- **Spacing** — base unit + scale + semantic spacing (padding-card, gap-items, etc.)
- **Shape** — border-radius scale tied to personality
- **Shadows** — elevation system (or border-based for flat designs)
- **Typography scale** — size + weight + line-height (pairs with `/font-matchmaker`)
- **Motion** — duration + easing curves matched to mood
- **Component library** — one specific recommendation with reasoning
- **Icon library** — matched to visual density and personality

Output format matches your stack: CSS variables, Tailwind config, or both.

## Philosophy: Describe Before Prescribing

The skill never dumps 200 lines of tokens on you. It first paints a picture:

> Imagine opening your app and everything feels intentionally quiet. Generous white space. Cards with barely-there borders. The primary color is a deep muted blue — calm confidence. Buttons are slightly rounded — approachable but not childish.

You validate the FEELING. Then the specific values follow. This prevents the common problem of generating a technically valid design system that doesn't match what you actually wanted.

## Pairs With

- [`/font-matchmaker`](https://github.com/josharsh/font-matchmaker) — typography selection using the same personality-first approach
- [`/production-ready`](https://github.com/josharsh/production-ready) — ensures the implementation meets your quality bar

## License

MIT
