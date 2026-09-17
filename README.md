# Tradesmith

Sits at a trade table, prices both sides against the community value
list, and accepts the offers that leave you ahead.

## Run it

```lua
loadstring(game:HttpGet("https://raw.githubusercontent.com/robomohit/tradesmith/main/tradesmith.luau"))()
```

Paste that into your executor. Put the same line in your autoexec folder
and it loads on every join and after every server hop, which is how it
is meant to be left running.

**It starts in practice mode** — it works every trade out and sends
nothing. Watch it turn a few offers down first. When you are ready, open
**Rules** in the in-game panel and switch practice mode off. That choice
is saved to `bf-trader-settings.json` in your executor's workspace and
survives a rejoin.

## What it will not do

- Never gives away a gamepass, a permanent, a dragon, or anything in
  your reserve list.
- Refuses skins and fruits that can still come out of a gacha box. Those
  slide in value and a stranger handing you one is handing you the fall.
- Checks the game's own trade rule before offering. Limited items carry
  no Beli at all, so a trade that looks fair by value can be illegal by
  the game's maths.
- Re-reads the trade window immediately before accepting, so a side that
  changed after the offer was judged cancels the trade.

## Settings

All in the in-game panel under **Rules**: practice mode, minimum gain,
minimum demand, items per side. Reserve prices per item are there too.
Nothing needs editing by hand.

If you multi-launch, add `"owner": "YourRobloxName"` to
`bf-trader-settings.json` so it only runs on the account you meant.

## Honest notes

Automating a Roblox game is against Roblox's rules and Blox Fruits'.
People get banned for automation. That risk is yours and this does not
remove it.

The value list is scraped from community value sites and is only as good
as they are. A trade it calls a 1.2x win is a 1.2x win *according to
that list*.

It makes small money slowly. Most of what it does is walk-up trades
worth single-digit millions. It will not turn 100M into a billion
overnight.

## Source

Not published. This repository carries the built script only.
