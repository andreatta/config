#!/bin/bash

# First we append the saved layout of worspace N to workspace M
i3-msg "append_layout ~/.i3/layouts/checkers.json"

# And finally we fill the containers with the programs they had
(urxvt &)
(urxvt &)
(urxvt &)
(urxvt &)
