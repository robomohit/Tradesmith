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

**The first time you run it, it sets itself up.** Four questions, over
the whole panel:

1. **Your items.** It reads your inventory, tells you what it is all
   worth, and asks about each one: **Keep** (never traded), **Trade**, or
   **Get rid of** (it takes as little as 90% back to move it).
2. **How careful.** Careful (at least 10% gain, popular items only),
   Balanced (5%) or Busy (3%).
3. **A fruit you are after,** if there is one. Pay a bit extra for it (as
   little as 90% back), a fair trade (even or better), or only a bargain
   like any other trade. Then: keep it once you have it, or let it trade.
4. **Trade for real, or just watch first.** Watching works every offer out
   and pops up each trade it would have taken, but nothing leaves your
   inventory. Then turn on **Start trading** on Home.

Then one more, and it is optional: **Watch it from your phone?** The live
dashboard stays off unless you press **Turn it on**. If you do, it copies
your sign-in link: paste it into your phone's browser (game on a PC? send
the link to yourself first). **Not now** leaves it off; you can turn it on
any time on the **Dashboard** page.

Nothing is saved until the last answer. Change any of it later in
**Settings**, or press **Run the setup again** there. Your answers are
saved in your executor's workspace and survive a rejoin, so it only asks
once.

**Hide or show the panel:** press **Ctrl** (**Cmd** on a Mac). On a phone
or tablet, tap the round **TS** button — drag it anywhere on screen. It
keeps trading while the panel is hidden.

## What it will not do

- **Never gives away a gamepass or a permanent fruit you have not
  released.** Every one starts on **Keep** in the setup; only the ones
  you switch to Trade or Get rid of can leave. Anything else you want to
  keep, mark Keep in the setup or lock it on the **Items** page.
- **Only settles for less than a win when you said so:** a trade of
  nothing but items you marked Get rid of (as little as 90% back), or a
  trade for nothing but the fruit you are after (90% back on Pay a bit
  extra, even value on Fair trade). Every other trade has to leave you
  ahead.
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

- **Home** — is it on, what is it doing, what it made today and this
  week, and will real items leave. At the bottom, **Join the Discord**
  copies the invite to the Tradesmith server: help, updates and trade
  wins.
- **Activity** — the trades it made, and why it turned offers down.
- **Items** — what you own, what it can never trade away, and what your
  setup chose.
- **Market** — what is worth trading for, and what to stay away from.
- **Dashboard** — the optional live page you can open on any device,
  and **Make a new key** if its link gets out.
- **Settings** — send real trades, minimum gain, minimum demand, items per
  side, walk speed, server hopping (off by default), running the setup
  again, and the usage counts switch under **Privacy**.

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
- **The rscripts.net listing.** That listing has rscripts.net's own
  optional run analytics turned on, so if you run Tradesmith from there,
  rscripts.net counts your runs on its side, under its own privacy policy.
  The script sends nothing more because of it.
- **Crash reports.** If something breaks, it sends one short line: which
  part failed, the error message, your executor's name, the game, your
  screen size and the build. At most five a session. Never your username,
  your user id, your items or your key — your own name is removed from
  the error text before it is sent.
- **Usage counts** (no name, key, items or user id), so bugs get fixed:
  trades done (or would have done, in watch mode), value change, mode,
  minutes running and trading, PC or phone, executor, build, and whether
  it changed server, was run again or disconnected, with a random id that
  resets every run and a line number. Sent a few minutes in, every half
  hour and at the end, and never in a run that had the dashboard on. Turn
  them off with **Send usage counts** in **Settings → Privacy**.
- **The dashboard — off by default.** Press **Turn it on** when the setup
  asks, or turn on **Send updates to my dashboard** on the **Dashboard**
  page, and it sends, every half minute and every few seconds while your
  dashboard is open (so the page is live), to your own page at
  https://tradesmith.pages.dev: what you hold and what it is worth, what
  it is doing and whether trading is on, what is on the trade table (item
  names and values only), this session's counts and why offers were turned
  down, your settings and setup choices (what you keep, what you are
  getting rid of, your target fruit), your minimum prices, the trades it
  finished in the last 7 days (the items, their values, whether it was an
  ordinary trade, your target or getting rid of something, and the time
  for today's trades or only the day for older ones), the trades it would
  have taken in that time while watching only, your totals for each of
  those days (trades, profit, and your item value at the day's first
  reading, with its time for today only), the date on your device so that
  "today" is your today (this shows roughly which time zone you are in),
  the top of the price list, the recent activity, your item value over the
  session, the script's version, whether game staff are in your server,
  and whether your game has disconnected. The first update after you turn
  it on also carries the trades it kept on your device from the last 7
  days, including ones from before you turned it on. When you turn it off,
  it sends one last message that only says it was turned off. It never
  sends who you trade with: names in the activity are replaced before it
  is sent, and the trade table and your trades carry items, not players.
  If you also turn on **Show my name and avatar**, it sends your numeric
  Roblox user id so the page can show them; your name itself is never sent
  or stored. The site keeps only the latest update (which carries those 7
  days of totals and trades), plus your total item value once every five
  minutes for 7 days so the chart can show a day and a week; older
  readings are deleted automatically. If it stops sending, your trades and
  daily totals are removed from the site after 8 days.
- **Kept on your device.** So that today's and this week's trades survive
  a server hop or a re-run, it keeps a small file,
  `tradesmith-ledger-<your user id>.json`, in your executor's workspace:
  up to 50 trades, up to 20 it would have taken while watching only, and 8
  days of totals — items and values, never who was on the other side. It
  is kept even with the dashboard off, and it only leaves your device as
  part of a dashboard update. Other scripts you run in the same executor
  can read this file, as they can your key file. To start the counts
  again, delete it while the script is not running; that does not change
  what the site holds.

The dashboard key is its only credential; anyone holding it sees your
dashboard, including your last week of trades. It is saved as
`tradesmith-key-<your user id>.txt` in your executor's workspace. Treat it
like a password. The sign-in link carries the same key, so keep it to
yourself too. If the key or the link gets out, press **Make a new key** on
the **Dashboard** page: it sends the site one message carrying only the old
key, the site deletes everything it held for that key, and the old link
shows nothing from then on. If another device uses the same key, paste the
new key there too.

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
