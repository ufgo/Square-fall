local M = {}

local isGameOver=false
local score=0
local badDomain=false
local best_score
local lider_board={}
local isHelp=true
local adsCounter=0
local isInit=false

function M.GetInit()
	return isInit
end

function M.SetInit(v)
	isInit=v
end


function M.GetAdsCounter()
	return adsCounter
end

function M.SetAdsCounter(v)
	adsCounter=v
end


function M.GetHelp()
	return isHelp
end

function M.setHelp(v)
	isHelp=v
end


function M.GetLiderBoard()
	return lider_board
end

function M.setLiderBoard(v)
	lider_board=v
end

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