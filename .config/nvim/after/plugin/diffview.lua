local actions = require("diffview.actions")
require("diffview").setup({
    view = {
        merge_tool = {
            layout = "diff3_mixed",
        },
    },
    keymaps = {
        view = {
            { "n", "<leader>gmp", actions.prev_conflict, {
                desc =
                "In the merge-tool: jump to the previous conflict"
            } },
            { "n", "<leader>gmn", actions.next_conflict, {
                desc =
                "In the merge-tool: jump to the next conflict"
            } },
            { "n", "<leader>gmc", actions.conflict_choose("ours"), { desc = "Choose the OURS version of a conflict" } },
            { "n", "<leader>gmi", actions.conflict_choose("theirs"), {
                desc =
                "Choose the THEIRS version of a conflict"
            } },
            { "n", "<leader>gmb", actions.conflict_choose("base"), { desc = "Choose the BASE version of a conflict" } },
            { "n", "<leader>gma", actions.conflict_choose("all"),  { desc = "Choose all the versions of a conflict" } },
            { "n", "<leader>gmC", actions.conflict_choose_all("ours"),
                {
                    desc =
                    "Choose the OURS version of a conflict for the whole file"
                } },
            { "n", "<leader>gmI", actions.conflict_choose_all("theirs"),
                {
                    desc =
                    "Choose the THEIRS version of a conflict for the whole file"
                } },
            { "n", "<leader>gmB", actions.conflict_choose_all("base"),
                {
                    desc =
                    "Choose the BASE version of a conflict for the whole file"
                } },
            { "n", "<leader>gmA", actions.conflict_choose_all("all"),
                {
                    desc =
                    "Choose all the versions of a conflict for the whole file"
                } },
        },
    }
})

vim.keymap.set('n', '<leader>gmo', '<cmd>DiffviewOpen<cr>')
vim.keymap.set('n', '<leader>gmq', '<cmd>DiffviewClose<cr>')