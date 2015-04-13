local function testing(self)
    local ext = tonumber(self.agi_extension)
    if ext == 320 then
        self:answer()
            :echo()
    elseif ext == 321 then
        self:answer()
            :playback(nil, '/tmp/new_sound')
    elseif ext == 322 then
        self:answer()
            :playback(nil, 'tt-monkeys')
    elseif ext == 323 then
        self:noop()
            :hangup()
    else
        self:hangup()
    end
    return self
end
