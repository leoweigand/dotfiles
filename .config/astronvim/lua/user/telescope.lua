local actions = require "telescope.actions"

return {
        defaults = {
                mappings = {
                        i = {
                                -- these should be defaults but don't seem to be
                                ["<C-n>"] = actions.move_selection_next,
                                ["<C-p>"] = actions.move_selection_previous,
                        },
                },
        },
}
