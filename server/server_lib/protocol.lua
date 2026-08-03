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

    SERVER        = proto("PROTO_SERVER"),
    SERVER_REPLY  = proto("PROTO_SERVER") .. ":REPLY",
    SERVER_STATE  = proto("PROTO_SERVER_STATE"),
    SERVER_QUEUE  = proto("PROTO_SERVER_QUEUE"),
    SERVER_PLAYER = proto("PROTO_SERVER_PLAYER"),

    AUDIO            = proto("PROTO_AUDIO"),
    AUDIO_NEXT       = proto("PROTO_AUDIO_NEXT"),
    AUDIO_HALT       = proto("PROTO_AUDIO_HALT"),
    AUDIO_CONNECTION = proto("PROTO_AUDIO_CONNECTION"),
    AUDIO_STATUS     = proto("PROTO_AUDIO_STATUS"),

    COMMAND     = proto("PROTO_COMMAND"),
    CLIENT_SYNC = proto("PROTO_CLIENT_SYNC"),
    UPDATED     = proto("PROTO_UPDATED"),
    CHATBOX     = proto("PROTO_CHATBOX"),
}
