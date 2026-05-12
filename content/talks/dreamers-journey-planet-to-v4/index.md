---
title: "Dreamer's Journey: From PlaNet to DreamerV4"
date: 2026-05-09
draft: false
summary: "Keynote recording from Robotics & World Models Reading Club 07: a walkthrough of PlaNet, DreamerV1-V4, imagination-based RL, and world models as foundation models for control."
tags: ["world models", "DreamerV4", "robot learning", "reinforcement learning"]
categories: ["Embodied AI"]
showWordCount: false
featureimage: "https://img.youtube.com/vi/HbSclSRyxu8/maxresdefault.jpg"
---

{{< lead >}}
Recording of my keynote at Robotics & World Models Reading Club 07, hosted by Saturday Robotics in Los Altos. The talk walks through the Dreamer lineage from latent planning in PlaNet to scalable generative world models for control in DreamerV4.
{{< /lead >}}

[Event page](https://luma.com/srhe0vuo) · [Slides and references](/insights/dreamers-journey-planet-to-v4/) · [Watch on YouTube](https://www.youtube.com/watch?v=HbSclSRyxu8)

{{< youtubeLite id="HbSclSRyxu8" label="Dreamer's Journey: From PlaNet to DreamerV4" >}}

## What this talk covers

- The core idea of the Dreamer family: learn a compact world model and train behavior inside it instead of relying on direct environment interaction.
- The evolution from PlaNet's latent planning, through actor-critic learning in imagination in DreamerV1-V3, to DreamerV4's scalable generative world model.
- DreamerV4 in detail: tokenizer, diffusion-transformer world model, behavior cloning, and PMPO-based reinforcement learning inside the learned simulator.
- Minecraft as a stress test for long-horizon, multi-stage behavior from raw pixels, and the open problems of memory, grounding, and reliable transfer to the real world.

For the full slide deck, references, and discussion questions, see [the Technical Insights write-up](/insights/dreamers-journey-planet-to-v4/).
