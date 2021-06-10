local yagames = require("yagames.yagames")
local G = require("scripts.global")

local M = {}

function M.init_handler(self, err)
    yagames.leaderboards_init(function(self, err)
        print("yagames.leaderboards_init:", err or "OK!")

        if not err then
            print("score init ok!")
        else
            print("some error in score:")
            pprint(err)
        end
    end)
end

local TABLE_NAME = "top"

function M.get_entries_handler(self)
    local options = {
        includeUser = false,
        quantityAround = 10,
        quantityTop = 10,
        getAvatarSrc = "small",
        getAvatarSrcSet = "large"
    }
    yagames.leaderboards_get_entries(TABLE_NAME, options, function(self, err, result)
        if not err then
            G.setLiderBoard(result)
            msg.post("liderboard:/go#liderboard", "set_liderboard")
        else
            print("some error in liderboard:")
            pprint(err)
        end
    end)
end

function M.get_player_entry_handler(self)
    yagames.leaderboards_get_player_entry(TABLE_NAME, nil, function(self, err, result)
        if not err then
            msg.post("game_over:/go#game_over", "ya_score",{score=result.score})
        else
            msg.post("game_over:/go#game_over", "ya_score",{score=nil})
        end
    end)
end

function M.set_score_handler(self,score)
    yagames.leaderboards_set_score(TABLE_NAME, score, nil, function(self, err)
        print("yagames.leaderboards_set_score:", err or tostring(score))
    end)
end

function M.init(self)
end

return M
