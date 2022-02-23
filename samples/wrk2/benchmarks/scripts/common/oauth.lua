local util = require("./scripts/common/util")

oAuthPath = "/token"

local _oauth = {}

function _oauth.request()
    local localPath = oAuthPath
    return wrk.format("GET", localPath)
end

return _oauth