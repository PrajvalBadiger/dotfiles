--  Auto command to convert *.md to *.pdf

-- local group = vim.api.nvim_create_augroup("docker_pandoc", { clear = ture })

-- vim.api.nvim_create_autocmd("BufWritePost",
--     {
--         group = group,
--         pattern = { "*.md" },
--         command =
--         "silent !sudo docker run --rm --volume './:/data' --user $(id -u):$(id -g) pandoc/latex % -o %:r.pdf",
--     }
-- )
