-- telescope list git_worktree
vim.keymap.set(
    "n",
    "<leader>wt",
    ":lua require('telescope').extensions.git_worktree.git_worktrees()<cr>"
)

-- telescope create git_worktree
vim.keymap.set(
    "n",
    "<leader>cwt",
    ":lua require('telescope').extensions.git_worktree.create_git_worktree()<cr>"
)
