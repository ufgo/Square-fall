local M = {}

local isGameOver=false

function M.GetGameOver()
	return isGameOver
end

function M.SetGameOver(v)
	isGameOver=v
end

return M