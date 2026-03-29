# Pretext Ad Format Demos — VCCPm × Pretext

Interactive demo platform showcasing 7 next-generation publisher ad formats powered by [Pretext](https://github.com/chenglou/pretext) — Cheng Lou's 15kb text layout library that eliminates DOM-based text measurement.

## Formats

1. **Obstacle-Aware** — Drag animated orbs, text reflows at 60fps on both sides
2. **Cursor Gravity** — Invisible force field, text parts around your cursor like water
3. **Canvas Warp** — Full canvas renderer with space grid, nebula, and cursor-following text reflow
4. **Editorial Spread** — Two-column magazine layout with branded orb and cursor handoff
5. **Scroll Reveal** — Scroll to open a clearing in the text, brand message materialises
6. **Super Pretext Bros** — Playable Mario platformer where text reflows around game objects every frame
7. **Aquarium** — SVG fish swimming with real-time text reflow and underwater environment

## How It Works

Every format uses Pretext's `prepareWithSegments()` and `layoutNextLine()` APIs to measure and lay out text without any DOM reads. Text reflows around arbitrary obstacles (circles, rectangles, moving objects) at 60fps with ~0.1ms computation time.

## Before & After

The demo includes a "Before" tab showing a traditional publisher article with a static 300×250 MPU rectangle ad, and an "After" tab with the 7 interactive Pretext-powered formats.

## Tech

- **Pretext** — 15kb, zero dependencies, zero DOM reads
- **Self-contained** — single HTML file, no build step
- **60fps** — all layout computed as pure arithmetic

## Credits

Built by VCCPm (VCCP Media) as an exploration of how Pretext enables new publisher ad formats that integrate with editorial content rather than interrupting it.

Powered by [Pretext](https://github.com/chenglou/pretext) by Cheng Lou.
