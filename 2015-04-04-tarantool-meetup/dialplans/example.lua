#!/usr/bin/env tarantool

local function dialplan(self)
    self:dial(nil, "SIP/%s/%s", 'runexis', 74951331770)
        :hangup()
    return self
end

server = require('agi.server').new('127.0.0.1', 6000)
    :script({path = '/dialplan'}, dialplan)
    :start()
