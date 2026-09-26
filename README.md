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

**The first time you run it, it asks:** trade for real, or just watch
first. Watching works every offer out and pops up each trade it would
have taken, but nothing leaves your inventory. You can change it any time
with **Send real trades** in **Settings**. The choice is saved to
`bf-trader-settings.json` in your executor's workspace and survives a
rejoin, so it only asks once.

**Hide or show the panel:** press **Ctrl** (**Cmd** on a Mac). On a phone
or tablet, tap the round **TS** button — drag it anywhere on screen. It
keeps trading while the panel is hidden.

## What it will not do

- **Never gives away a gamepass or a permanent fruit.** This is built
  into the script, not a setting, so it holds even if you have locked
  nothing. Anything else you want to keep, lock on the **Items** page.
- **Never takes a gamepass or a permanent fruit in.** Fruits that can
  still come out of a gacha box are on the never-accept list, which you
  can switch off in Settings (it is recommended to leave it on) — those
  slide in value, and a stranger handing you one is handing you the fall.
- Never accepts an item it cannot price. Unknown item, no deal.
- Never trades anything you lock on the **Items** page.
- **Judges every offer against the size of your own inventory.** A package
  that is most of what you own has to clear a higher bar than a routine
  one; slow-moving items stop counting at full price; and it will not
  break up your best item for a handful of smaller ones when that item is
  most of what you have. The same rules apply whether you are trading 50M
  or 5B.
- Checks the game's own trade rule before offering. Limited items carry
  no Beli at all, so a trade that looks fair by value can be illegal by
  the game's maths.
- Re-reads the trade window immediately before accepting, so a side that
  changed after the offer was judged cancels the trade.

## The panel

Six pages:

- **Home** — is it on, what is it doing, and will real items leave.
- **Activity** — the trades it made, and why it turned offers down.
- **Items** — what you own, and what it can never trade away.
- **Market** — what is worth trading for, and what to stay away from.
- **Dashboard** — the optional live page you can open on any device.
- **Settings** — send real trades, minimum gain, minimum demand, items per
  side, walk speed and server hopping (off by default).

Settings are saved as you change them and survive a rejoin.

If you multi-launch, add `"owner": "YourRobloxName"` to
`bf-trader-settings.json` so it only runs on the account you meant.

## What it sends

Plainly, all of it:

- **Download count.** The line above fetches the script through
  `tradesmith.pages.dev`, which records that a download happened: the
  time, a country, and the device model your Roblox app reports with
  every web request (for example an iPad or an Android phone model). This
  is kept while the script is new, to see which devices it breaks on. It
  never records your username, your user id or your IP. If that site is
  down it falls back to the copy in this repository and still runs.
- **Crash reports.** If something breaks, it sends one short line: which
  part failed, the error message, your executor's name, the game, your
  screen size and the build. At most five a session. Never your username,
  your user id, your items or your key — your own name is removed from
  the error text before it is sent.
- **The dashboard — off by default.** Turn on **Send updates to my
  dashboard** on the **Dashboard** page and it sends what you hold and its
  value, what the engine is doing, session counters, your rules and
  minimum prices, completed trades and the recent event log, to your own
  page at https://tradesmith.pages.dev. Partner names in the event log are
  replaced before it is sent. If you also turn on **Show my name and
  avatar**, it sends your numeric Roblox user id so the page can show
  them; your name itself is never sent or stored.

The dashboard key is its only credential; anyone holding it sees your
dashboard. It is saved as `tradesmith-key.txt` in your executor's
workspace. Treat it like a password.

## What it loads

The interface comes from a community UI library fetched from GitHub at
runtime, pinned to a fixed version — Airflow-UI (PookiePepelsss), with
WindUI (Footagesus), Maclib (biggaboy212) and Starlight Interface Suite
(Nebula-Softworks) as fallbacks. They are not mine and they run in your
executor.

## Honest notes

Automating a Roblox game is against Roblox's rules and Blox Fruits'.
People get banned for automation. That risk is yours and this does not
remove it.

The value list is scraped from community value sites and is only as good
as they are. A trade it calls a 1.2x win is a 1.2x win *according to
that list*.

It makes small money slowly. Most of what it does is walk-up trades. It
will not turn 100M into a billion overnight.

## Credits

The published script is obfuscated with Prometheus.
Based on Prometheus by Elias Oelschner, https://github.com/prometheus-lua/Prometheus

## Source

Not published. This repository carries the built script only.
