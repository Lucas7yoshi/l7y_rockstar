RegisterCommand("rsstart", function()
    if (IsRecording()) then
        SendMsg("Already recording!")
    else
        SendMsg("Starting recording")
        StartRecording(1)
    end
end)

RegisterCommand("rsactionreplay", function()
    if (IsRecording()) then
        SendMsg("Already recording!")
    else
        SendMsg("Starting action replay")
        StartRecording(0)
    end
end)

RegisterCommand("rsstop", function()
    if (IsRecording()) then
        StopRecordingAndSaveClip()
    else
        SendMsg("Wasn't recording!")
    end    
end)

RegisterCommand("rsdiscard", function()
    StopRecordingAndDiscardClip()
    SendMsg("Discarded clip")
end)

RegisterCommand("rsopen", function()
    ActivateRockstarEditor()
end)

function SendMsg(text)
    TriggerEvent("chatMessage", "Rockstar Editor", {255, 255, 255}, text)
end