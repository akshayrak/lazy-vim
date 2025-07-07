return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local function git_ahead_behind()
      local handle = io.popen("git rev-list --left-right --count Head...@{u} 2>nul")
      if not handle then
        return ""
      end

      local result = handle:read("*a")
      handle:close()

      local ahead, behind = result:match("(%d+)%s+(%d+)")

      if ahead == nil or behind == nil then
        return ""
      end

      ahead, behind = tonumber(ahead), tonumber(behind)
      local status = ""
      if ahead >= 0 then
        status = status .. "↑" .. ahead .. " "
      end
      if behind >= 0 then
        status = status .. "↓" .. behind
      end
      return status
    end

    table.insert(opts.sections.lualine_b, git_ahead_behind)
  end,
}
