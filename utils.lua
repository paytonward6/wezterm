
local M = {}

M.by_os = function(opts)
    local host_os = io.popen("uname -o"):read("*l")

    if host_os == "GNU/Linux" and opts.linux then
        return opts.linux
    elseif host_os == "Darwin" and opts.mac then
        return opts.mac
    end
    return nil
end

return M
