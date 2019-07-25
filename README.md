# NGU Rebirth Script

Rebirth and Challenge AutoHotKey script for NGU Idle

Written by __Unponderable__ and __Tatsumasa__\
Also thanks to __EvoGeek__, the genesis of much of this script.\
Come visit us in Discord: https://discord.gg/5revMxD


#### Requirements to fully use this script

The Script uses AutoHotKey. Must be downloaded and installed!

Must have 1-energy-capped all Basic Training skills\
Must have unlocked: Wandoos, NGUs, Yggdrasil, ITOPOD\
Must have purchased with XP: Training Auto Advance, 2+ Loadout Slots, Custom Energy Button 1\
Must have puchased with AP: Insta Training Cap (10,000 AP)
Must use the Normal (default) UI theme

I strongly suggest having Auto Boost, Auto Merge, and Advanced Loot Filter, as the script does not (currently) do inventory management.

#### Setup

1. If you're doing regular runs, have stats/number sufficient to sustainably kill up through Boss 37 within the first few seconds of your rebirth. For regular runs, the script assumes you have blood magic unlocked from the get-go.
1a. If you're doing challenge runs, have stats sufficient to kill Boss 37 within a couple short rebirths.
2. Setup beards as desired. Beards will not be touched in this script. Magic beards are more useful for this scripts' purposes.
3. Set Loadout 1 to be your general run gear. This will be what you wear for most of your run(s).
4. Set Loadout 2 to be heavy in gold find (without sacrificing too much power/toughness). Used only for the first few kills for time machine purposes.
5. Ensure all Augmentation/Time Machine targets are set to zero.\
5a. If you're doing a long run, ensure advanced training limits are set to appropriate limits. Long runs will try to boost adv training wandoos speed.
6. Change in-game setting "Unassign E/M on Loadout Swap?" to YES and "Check for Updates" to OFF.
7. Make a manual save, just in case stuff doesn't work.
8. Load script and select your run choice with the menu, changing settings beforehand if desired.
9. Quit at anytime with Escape.

#### FAQs

__Q__: I can't sustain 3-minute rebirths above boss 37 and therefore challenge runs don't work! What do I do?

__A__: Come back when you have more stats or change the challenge run sequence to use longer duration runs.

__Q__: HALP. It's giving me an error about the game not being visible/not finding TopLeft.png!

__A__: The script attempts to match the image TopLeft.png with the top left corner of the game screen. Make sure NGU idle is fully visible on the screen. Make sure the script is being run in the same file directory as the images that it came with. If you're still having issues, you may have an incompatible aspect ratio or scaling factor. For reference, the script was tested in Chrome and Firefox at 100% zoom on a 1920x1080 resolution monitor.  Check to make sure your DPI is set to 100%. Try matching that, if possible. Make sure night time mode/blue screen filter is off. If that doesn't work, I don't really know how to fix it, sorry :-/

__Q__: Why does the script come to a halt when Iron Pill is active?

__A__: The script waits 5 minutes for blood to accumulate before casting Iron Pill.
