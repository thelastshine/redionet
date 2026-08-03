--[[
    Shared protocol name definitions.

    Change PROTO_SUFFIX to move this Redionet network onto a separate,
    non-colliding set of rednet protocols (e.g. to run two independent
    servers on the same in-game network without them interfering).

    IMPORTANT: This value must be IDENTICAL to the PROTO_SUFFIX set in
    client/client_lib/protocol.lua on every client computer, or the
    server and clients will not be able to talk to each other.
]]

local PROTO_SUFFIX = "2"

local function proto(name)
    return name .. PROTO_SUFFIX
end

return {
    SUFFIX = PROTO_SUFFIX,

    SERVER        = proto("PROTO_SERVER2"),
    SERVER_REPLY  = proto("PROTO_SERVER2") .. ":REPLY",
    SERVER_STATE  = proto("PROTO_SERVER_STATE2"),
    SERVER_QUEUE  = proto("PROTO_SERVER_QUEUE2"),
    SERVER_PLAYER = proto("PROTO_SERVER_PLAYER2"),

    AUDIO            = proto("PROTO_AUDIO2"),
    AUDIO_NEXT       = proto("PROTO_AUDIO_NEXT2"),
    AUDIO_HALT       = proto("PROTO_AUDIO_HALT2"),
    AUDIO_CONNECTION = proto("PROTO_AUDIO_CONNECTION2"),
    AUDIO_STATUS     = proto("PROTO_AUDIO_STATUS2"),

    COMMAND     = proto("PROTO_COMMAND2"),
    CLIENT_SYNC = proto("PROTO_CLIENT_SYNC2"),
    UPDATED     = proto("PROTO_UPDATED2"),
    CHATBOX     = proto("PROTO_CHATBOX2"),
}
