vim.keymap.set("n", "<leader>aa", ":ArduinoAttach<CR>")
vim.keymap.set("n", "<leader>av", ":ArduinoVerify<CR>:$<CR>")
vim.keymap.set("n", "<leader>au", ":ArduinoUpload<CR>:$<CR>")
vim.keymap.set("n", "<leader>aus", ":ArduinoUploadAndSerial<CR>")
vim.keymap.set("n", "<leader>as", ":ArduinoSerial<CR>")
vim.keymap.set("n", "<leader>ab", ":ArduinoChooseBoard<CR>")
vim.keymap.set("n", "<leader>ap", ":ArduinoChoosePort<CR>")
vim.keymap.set("n", "<leader>asd", ":!kill $(pidof SCREEN)<CR><CR>") -- kill serial

-- Kill buffers containing "screen" or "compile" in the name
function KillBuffersWithScreenAndCompile()
    local target_strings = { "screen", "compile" }
    local buffers = vim.api.nvim_list_bufs()

    for _, buf in ipairs(buffers) do
        local buf_name = vim.api.nvim_buf_get_name(buf)
        for _, target_name in ipairs(target_strings) do
            if string.find(buf_name, target_name) then
                vim.api.nvim_buf_delete(buf, { force = true })
                break
            end
        end
    end
end

-- Map a key to call the function (you can change the key to your preference)
vim.api.nvim_set_keymap('n', '<Leader>ks', '<cmd>lua KillBuffersWithScreenAndCompile()<CR>',
    { noremap = true, silent = true })
