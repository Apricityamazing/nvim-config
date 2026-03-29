vim.g.knap_settings = {
    htmltohtmlviewerlaunch = "live-server --quiet --browser=firefox --open=%outputfile% --watch=%outputfile% --wait=800",
    htmltohtmlviewerrefresh = "none",
    mdtohtmlviewerlaunch = "live-server --quiet --browser=firefox --open=%outputfile% --watch=%outputfile% --wait=800",
    mdtohtmlviewerrefresh = "none",
    mdtohtml = "pandoc --standalone -ccs=/home/apricity/.config/nvim/lua/plugins/knap/knap-style.css %docroot% -o %outputfile%",
}

local knap_group = vim.api.nvim_create_augroup("KnapCleanup", { clear = true })

vim.api.nvim_create_autocmd("BufUnload", {
    group = knap_group,
    pattern = "*",
    callback = function()
        if vim.b.knap_viewerpid then
            os.execute("pkill -f live-server")
        end
    end,
})
