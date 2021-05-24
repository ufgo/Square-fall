local M = {}

local isGameOver=false
local score=0
local badDomain=false
local best_score

function M.GetBadDomain()
	return badDomain
end

function M.setBadDomain(v)
	badDomain=v
end


function M.GetBestScore()
	return best_score
end

function M.SetBestScore(v)
	best_score=v
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