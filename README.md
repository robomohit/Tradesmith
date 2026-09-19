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

**It starts with Send real trades off** — it works every offer out and
shows you what it would have done, but nothing leaves your inventory.
Open **Settings** in the in-game panel and switch it on when you want it
to trade. That choice is saved to `bf-trader-settings.json` in your
executor's workspace and survives a rejoin.

Press **Right Shift** to hide or show the panel. It keeps trading while
it is hidden.

## What it will not do

- Never gives away a gamepass, a permanent, a dragon, or anything in
  your reserve list.
- **Judges every offer against the size of your own inventory.** The
  quality rules used to be fixed amounts, chosen for a large book, so a
  smaller one tripped none of them and was left with the gain ratio and
  nothing else. Now a package that is most of what you own has to clear a
  higher bar than a routine one; slow-moving items stop counting at full
  book price; and it will not break up your best item for a handful of
  smaller ones when that item is most of what you have. The same rules
  apply whether you are trading 50M or 5B.
- Refuses skins and fruits that can still come out of a gacha box. Those
  slide in value and a stranger handing you one is handing you the fall.
- Checks the game's own trade rule before offering. Limited items carry
  no Beli at all, so a trade that looks fair by value can be illegal by
  the game's maths.
- Re-reads the trade window immediately before accepting, so a side that
  changed after the offer was judged cancels the trade.

## The panel

Five pages:

- **Home** — is it on, what is it doing, and will real items leave.
- **Activity** — the trades it made, and why it turned offers down.
- **Items** — what you own, and what it can never trade away. Lock
  anything here and it never goes on the table.
- **Market** — what is worth trading for, and what to stay away from.
- **Settings** — send real trades, minimum gain, minimum demand, items
  per side, and the phone dashboard.

Settings are saved as you change them and survive a rejoin. The
never-accept list and any minimum prices are shown on **Items** but are
not editable from the panel — they are what makes this safe to leave
running.

If you multi-launch, add `"owner": "YourRobloxName"` to
`bf-trader-settings.json` so it only runs on the account you meant.

## Watch it from your phone (optional, off by default)

The panel can sync to **https://tradesmith.pages.dev**. Turn on **Send
updates to my phone** under **Settings**, press **Copy key**, and paste
that key on the site to see the same numbers from anywhere.

It sends what you hold and its book value, what the engine is doing, the
session counters, your rules and reserve prices, completed trades, the
top of the value list, and the recent event log. It does not send your
Roblox name, anyone you trade with, or anything from chat - partner
names in the event log are replaced before it is sent.

The key is the only credential; anyone holding it sees your dashboard.
It is saved as `tradesmith-key.txt` in your executor's workspace.
Delete that file and the next sync mints a fresh key - but the old one
keeps working for whoever has it, because nothing revokes it server
side. Treat it like a password.

## What it loads

The interface comes from one of four community UI libraries, fetched at
runtime from GitHub and pinned to fixed versions. They are not mine and
they run in your executor:

- Airflow-UI (PookiePepelsss)
- Starlight Interface Suite (Nebula-Softworks)
- Maclib (biggaboy212)
- WindUI (Footagesus)

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
