#!/bin/bash

# First we append the saved layout of worspace N to workspace M
i3-msg "append_layout ~/.i3/layouts/dia-ws.json"

# And finally we fill the containers with the programs they had
(dia &)
