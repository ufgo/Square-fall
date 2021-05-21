local M = {}

local isGameOver=false
local score=0
local badDomain=false

function M.GetBadDomain()
	return badDomain
end

function M.setBadDomain(v)
	badDomain=v
end


function M.GetScore()
	return score
end

function M.SetScore(v)
	score=v
end


function M.GetGameOver()
	return isGameOver
end

function M.SetGameOver(v)
	isGameOver=v
end

return M