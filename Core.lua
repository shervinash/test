local addgroup = function(msg)
  local group = load_data("group.json")
  local groupa = group[tostring(msg.chat_id)]
  if not groupa then
    group[tostring(msg.chat_id)] = {
      group_type = "SuperGroup",
      by = msg.from_id,
      moderators = {},
      set_owner = member_id,
      settings = {
        lock_link = "no",
        lock_username = "no",
        lock_edit = "no",
        lock_fwd = "no",
        lock_spam = "no",
        lock_english = "no",
        lock_persian = "no",
        lock_tgservice = "no",
        lock_sticker = "no",
        mute_all = "no",
        mute_photo = "no",
        mute_video = "no",
        mute_voice = "no",
        mute_document = "no",
        mute_gif = "no",
        mute_audio = "no"
      }
    }
    save_data(_config.group.data, group)
    tg.sendMessage(msg.chat_id, msg.id_, 1, "\216\179\217\136\217\190\216\177 \218\175\216\177\217\136\217\135 \216\168\216\167 \217\133\217\136\217\129\217\130\219\140\216\170 \216\167\216\182\216\167\217\129\217\135 \216\180\216\175.", 1)
  else
    tg.sendMessage(msg.chat_id, msg.id_, 1, "\216\167\219\140\217\134 \218\175\216\177\217\136\217\135 \216\167\216\178 \217\130\216\168\217\132 \217\136\216\172\217\136\216\175 \216\175\216\167\216\177\216\175.", 1)
  end
end
local remgroup = function(msg)
  local group = load_data("group.json")
  local groupa = group[tostring(msg.chat_id)]
  if groupa then
    group[tostring(msg.chat_id)] = nil
    save_data(_config.group.data, group)
    tg.sendMessage(msg.chat_id, msg.id_, 1, "\216\179\217\136\217\190\216\177 \218\175\216\177\217\136\217\135 \216\168\216\167 \217\133\217\136\217\129\217\130\219\140\216\170 \216\173\216\176\217\129 \216\180\216\175.", 1)
  else
    tg.sendMessage(msg.chat_id, msg.id_, 1, "\216\179\217\136\217\190\216\177 \218\175\216\177\217\136\217\135 \216\167\216\178 \217\130\216\168\217\132 \217\136\216\172\217\136\216\175 \217\134\216\175\216\167\216\177\216\175.", 1)
  end
end
local lock_group_links = function(msg, target)
  local group = load_data("group.json")
  local group_link_lock = group[tostring(target)].settings.lock_link
  if group_link_lock == "yes" then
    pm = "\217\130\217\129\217\132 \217\132\219\140\217\134\218\169 \217\129\216\185\216\167\217\132 \216\168\217\136\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.lock_link = "yes"
    save_data(_config.group.data, group)
    pm = "\217\130\217\129\217\132 \217\132\219\140\217\134\218\169 \217\129\216\185\216\167\217\132 \216\180\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local lock_group_username = function(msg, target)
  local group = load_data("group.json")
  local group_username_lock = group[tostring(target)].settings.lock_username
  if group_username_lock == "yes" then
    pm = "\217\130\217\129\217\132 \216\167\216\177\216\179\216\167\217\132 \217\134\216\167\217\133 \218\169\216\167\216\177\216\168\216\177\219\140 \217\129\216\185\216\167\217\132 \216\168\217\136\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.lock_username = "yes"
    save_data(_config.group.data, group)
    pm = "\217\130\217\129\217\132 \216\167\216\177\216\179\216\167\217\132 \217\134\216\167\217\133 \218\169\216\167\216\177\216\168\216\177\219\140 \217\129\216\185\216\167\217\132 \216\180\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local lock_group_edit = function(msg, target)
  local group = load_data("group.json")
  local group_edit_lock = group[tostring(target)].settings.lock_edit
  if group_edit_lock == "yes" then
    pm = "\217\130\217\129\217\132 \217\136\219\140\216\177\216\167\219\140\216\180 \217\190\219\140\216\167\217\133 \217\129\216\185\216\167\217\132 \216\168\217\136\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.lock_edit = "yes"
    save_data(_config.group.data, group)
    pm = "\217\130\217\129\217\132 \217\136\219\140\216\177\216\167\219\140\216\180 \217\190\219\140\216\167\217\133 \217\129\216\185\216\167\217\132 \216\180\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local lock_group_fwd = function(msg, target)
  local group = load_data("group.json")
  local group_fwd_lock = group[tostring(target)].settings.lock_fwd
  if group_fwd_lock == "yes" then
    pm = "\217\130\217\129\217\132 \217\129\217\136\216\177\217\136\216\167\216\177\216\175 \217\190\219\140\216\167\217\133 \217\129\216\185\216\167\217\132 \216\168\217\136\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.lock_fwd = "yes"
    save_data(_config.group.data, group)
    pm = "\217\130\217\129\217\132 \217\129\217\136\216\177\217\136\216\167\216\177\216\175 \217\190\219\140\216\167\217\133 \217\129\216\185\216\167\217\132 \216\180\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unlock_group_links = function(msg, target)
  local group = load_data("group.json")
  local group_link_lock = group[tostring(target)].settings.lock_link
  if group_link_lock == "no" then
    pm = "\217\130\217\129\217\132 \217\132\219\140\217\134\218\169 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\168\217\136\216\175\217\135 \216\167\216\179\216\170."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.lock_link = "no"
    save_data(_config.group.data, group)
    pm = "\217\130\217\129\217\132 \217\132\219\140\217\134\218\169 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\180\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unlock_group_username = function(msg, target)
  local group = load_data("group.json")
  local group_username_lock = group[tostring(target)].settings.lock_username
  if group_username_lock == "no" then
    pm = "\217\130\217\129\217\132 \216\167\216\177\216\179\216\167\217\132 \217\134\216\167\217\133 \218\169\216\167\216\177\216\168\216\177\219\140 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\168\217\136\216\175\217\135 \216\167\216\179\216\170."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.lock_username = "no"
    save_data(_config.group.data, group)
    pm = "\217\130\217\129\217\132 \216\167\216\177\216\179\216\167\217\132 \217\134\216\167\217\133 \218\169\216\177\216\168\216\177\219\140 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\180\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unlock_group_edit = function(msg, target)
  local group = load_data("group.json")
  local group_edit_lock = group[tostring(target)].settings.lock_edit
  if group_edit_lock == "no" then
    pm = "\217\130\217\129\217\132 \217\136\219\140\216\177\216\167\219\140\216\180 \217\190\219\140\216\167\217\133 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\168\217\136\216\175\217\135 \216\167\216\179\216\170."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.lock_edit = "no"
    save_data(_config.group.data, group)
    pm = "\217\130\217\129\217\132 \217\136\219\140\216\177\216\167\219\140\216\180 \217\190\219\140\216\167\217\133 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\180\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unlock_group_fwd = function(msg, target)
  local group = load_data("group.json")
  local group_fwd_lock = group[tostring(target)].settings.lock_fwd
  if group_fwd_lock == "no" then
    pm = "\217\130\217\129\217\132 \217\129\217\136\216\177\217\136\216\167\216\177\216\175 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\168\217\136\216\175\217\135 \216\167\216\179\216\170."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.lock_fwd = "no"
    save_data(_config.group.data, group)
    pm = "\217\130\217\129\217\132 \217\129\217\136\216\177\217\136\216\167\216\177\216\175 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\180\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local lock_group_spam = function(msg, target)
  local group = load_data("group.json")
  local group_spam_lock = group[tostring(target)].settings.lock_spam
  if group_spam_lock == "yes" then
    pm = "\217\130\217\129\217\132 \216\167\216\179\217\190\217\133 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\168\217\136\216\175\217\135 \216\167\216\179\216\170."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.lock_spam = "yes"
    save_data(_config.group.data, group)
    pm = "\217\130\217\129\217\132 \216\167\216\179\217\190\217\133 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\180\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unlock_group_spam = function(msg, target)
  local group = load_data("group.json")
  local group_spamlock = group[tostring(target)].settings.lock_spam
  if group_spam_lock == "no" then
    pm = "\217\130\217\129\217\132 \216\167\216\179\217\190\217\133 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\168\217\136\216\175\217\135 \216\167\216\179\216\170."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.lock_spam = "no"
    save_data(_config.group.data, group)
    pm = "\217\130\217\129\217\132 \216\167\216\179\217\190\217\133 \216\186\219\140\216\177 \217\129\216\185\216\167\217\132 \216\180\216\175."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local mute_all_group = function(msg, target)
  local group = load_data("group.json")
  local mute_all = group[tostring(target)].settings.mute_all
  if mute_all == "yes" then
    pm = "<b>Mute All:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_all = "yes"
    save_data(_config.group.data, group)
    pm = "<b>Mute All:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unmute_all_group = function(msg, target)
  local group = load_data("group.json")
  local mute_all = group[tostring(target)].settings.mute_all
  if mute_all == "no" then
    pm = "<b>Mute All:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_all = "no"
    save_data(_config.group.data, group)
    pm = "<b>Mute All:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local mute_photo_group = function(msg, target)
  local group = load_data("group.json")
  local mute_all = group[tostring(target)].settings.mute_photo
  if mute_all == "yes" then
    pm = "<b>Mute Photo:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_photo = "yes"
    save_data(_config.group.data, group)
    pm = "<b>Mute Photo:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unmute_photo_group = function(msg, target)
  local group = load_data("group.json")
  local mute_all = group[tostring(target)].settings.mute_photo
  if mute_all == "no" then
    pm = "<b>Mute Photo:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_photo = "no"
    save_data(_config.group.data, group)
    pm = "<b>Mute Photo:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local mute_video_group = function(msg, target)
  local group = load_data("group.json")
  local mute_video = group[tostring(target)].settings.mute_video
  if mute_video == "yes" then
    pm = "<b>Mute Video:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_video = "yes"
    save_data(_config.group.data, group)
    pm = "<b>Mute Video:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unmute_video_group = function(msg, target)
  local group = load_data("group.json")
  local mute_video = group[tostring(target)].settings.mute_video
  if mute_video == "no" then
    pm = "<b>Mute Video:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_video = "no"
    save_data(_config.group.data, group)
    pm = "<b>Mute Video:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local mute_gif_group = function(msg, target)
  local group = load_data("group.json")
  local mute_gif = group[tostring(target)].settings.mute_gif
  if mute_gif == "yes" then
    pm = "<b>Mute Gif:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_gif = "yes"
    save_data(_config.group.data, group)
    pm = "<b>Mute Gif:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unmute_gif_group = function(msg, target)
  local group = load_data("group.json")
  local mute_gif = group[tostring(target)].settings.mute_gif
  if mute_gif == "no" then
    pm = "<b>Mute Gif:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_gif = "no"
    save_data(_config.group.data, group)
    pm = "<b>Mute Gif:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local mute_voice_group = function(msg, target)
  local group = load_data("group.json")
  local mute_voice = group[tostring(target)].settings.mute_voice
  if mute_voice == "yes" then
    pm = "<b>Mute Voice:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_voice = "yes"
    save_data(_config.group.data, group)
    pm = "<b>Mute Voice:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unmute_voice_group = function(msg, target)
  local group = load_data("group.json")
  local mute_voice = group[tostring(target)].settings.mute_voice
  if mute_voice == "no" then
    pm = "<b>Mute Voice:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_voice = "no"
    save_data(_config.group.data, group)
    pm = "<b>Mute Voice:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local mute_audio_group = function(msg, target)
  local group = load_data("group.json")
  local mute_audio = group[tostring(target)].settings.mute_audio
  if mute_audio == "yes" then
    pm = "<b>Mute Audio:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_audio = "yes"
    save_data(_config.group.data, group)
    pm = "<b>Mute Audio:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unmute_audio_group = function(msg, target)
  local group = load_data("group.json")
  local mute_audio = group[tostring(target)].settings.mute_audio
  if mute_audio == "no" then
    pm = "<b>Mute Audio:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_audio = "no"
    save_data(_config.group.data, group)
    pm = "<b>Mute Audio:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local mute_document_group = function(msg, target)
  local group = load_data("group.json")
  local mute_document = group[tostring(target)].settings.mute_document
  if mute_document == "yes" then
    pm = "<b>Mute Document:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_document = "yes"
    save_data(_config.group.data, group)
    pm = "<b>Mute Document:yes</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local unmute_document_group = function(msg, target)
  local group = load_data("group.json")
  local mute_document = group[tostring(target)].settings.mute_document
  if mute_document == "no" then
    pm = "<b>Mute Document:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  else
    group[tostring(target)].settings.mute_document = "no"
    save_data(_config.group.data, group)
    pm = "<b>Mute Document:no</b>"
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  end
end
local settings = function(msg, target, group)
  local group = load_data("group.json")
  pm = "\240\159\148\167SuperGroup settings \240\159\148\167"
  pm = pm .. "\n \226\154\153<b>Lock Links</b> : " .. group[tostring(target)].settings.lock_link .. "\226\154\153"
  pm = pm .. "\n \226\154\153<b>Lock Username</b> : " .. (group[tostring(target)].settings.lock_username or "no") .. "\226\154\153"
  pm = pm .. "\n \226\154\153<b>Lock Edit</b> : " .. group[tostring(target)].settings.lock_edit .. "\226\154\153"
  pm = pm .. "\n \226\154\153<b>Lock Fwd</b> : " .. (group[tostring(target)].settings.lock_fwd or "no") .. "\226\154\153"
  pm = pm .. "\n \226\154\153<b>Lock Spam</b> : " .. (group[tostring(target)].settings.lock_spam or "no") .. "\226\154\153"
  pm = pm .. "\n     \240\159\148\167<b>Mute</b>\240\159\148\167"
  pm = pm .. "\n \226\154\153<b>Mute All</b> : " .. (group[tostring(target)].settings.mute_all or "no") .. "\226\154\153"
  pm = pm .. "\n \226\154\153<b>Mute Photo</b> : " .. (group[tostring(target)].settings.mute_photo or "no") .. "\226\154\153"
  pm = pm .. "\n \226\154\153<b>Mute Video</b> : " .. (group[tostring(target)].settings.mute_video or "no") .. "\226\154\153"
  pm = pm .. "\n \226\154\153<b>Mute Voice</b> : " .. (group[tostring(target)].settings.mute_voice or "no") .. "\226\154\153"
  pm = pm .. "\n \226\154\153<b>Mute Document</b> : " .. (group[tostring(target)].settings.mute_document or "no") .. "\226\154\153"
  pm = pm .. "\n \226\154\153<b>Mute Audio</b> : " .. (group[tostring(target)].settings.mute_audio or "no") .. "\226\154\153"
  pm = pm .. "\n \226\154\153<b>Mute Gif</b> : " .. (group[tostring(target)].settings.mute_gif or "no") .. "\226\154\153"
  pm = pm .. [[

<b>  create by cruel</b>]]
  tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
end
local run = function(msg, matches)
  gm = redis:get("gm")
  if not gm then
    redis:set("gm", "non")
    pm = "\216\174\216\183\216\167 ! \217\132\216\183\217\129\216\167 \217\133\216\172\216\175\216\175 \216\167\217\133\216\170\216\173\216\167\217\134 \218\169\217\134\219\140\216\175..."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
  elseif gm == "setowner" then
    group[tostring(msg.chat_id_)].set_owner = tostring(msg.from_id)
    save_data(_config.group.data, group)
    pm = "\216\175\216\177 \216\173\216\167\217\132 \217\190\216\177\216\175\216\167\216\178\216\180 \217\132\216\183\217\129\216\167 \216\181\216\168\216\177 \218\169\217\134\219\140\216\175..."
    tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
    sleep(0.3)
    tg.editMessageText(msg.chat_id_, msg.id_, reply_markup, "\217\133\216\175\219\140\216\177 \218\175\216\177\217\136\217\135 \216\168\216\167 \217\133\217\136\217\129\217\130\219\140\216\170 \216\170\216\186\219\140\219\140\216\177 \219\140\216\167\217\129\216\170.", 0, "html")
    redis:set("gm", "non")
    reload = redis:get("reload")
  elseif gm == "non" then
    if matches[1] == "reload" and is_sudo(msg) then
      reloadplugins()
      tg.sendMessage(msg.chat_id, msg.id_, 0, "\216\168\216\167\216\177\218\175\216\176\216\167\216\177\219\140 \217\133\216\172\216\175\216\175 \216\167\217\134\216\172\216\167\217\133 \216\180\216\175.", 0)
    elseif matches[1] == "id" then
      redis:set("channelid", msg.chat_id_)
      tg.getUserFull(msg.from_id)
    elseif matches[1] == "user" and matches[2] then
      tg.getInlineQueryResults(msg.user_.username_, redis:get("channelid"), 0, 0, msg.user_.username_, 0)
      pm = "name:" .. msg.user_.first_name_ .. [[

username:]] .. msg.user_.username_
      tg.sendMessage(redis:get("channelid"), 0, 1, pm, 1, "html")
    elseif matches[1] == "sendbot" then
      if reload == "setownerr" then
        group[tostring(msg.chat_id_)].set_owner = tostring(msg.from_id)
        save_data(_config.group.data, group)
        redis:set("reload", "no")
        tg.sendMessage(msg.chat_id, 0, 0, "\217\133\216\175\219\140\216\177 \218\175\216\177\217\136\217\135 \216\168\216\167 \217\133\217\136\217\129\217\130\219\140\216\170 \216\170\216\186\219\140\219\140\216\177 \219\140\216\167\217\129\216\170.", 0)
      elseif reload == "promote" then
        group[tostring(msg.chat_id_)].moderators[tostring(msg.from_id)] = msg.from_id
        save_data(_config.group.data, group)
        redis:set("reload", "no")
        tg.sendMessage(msg.chat_id, 0, 0, "\218\169\216\167\216\177\216\168\216\177 \216\168\217\135 \216\172\217\133\216\185 \217\133\216\175\219\140\216\177\216\167\217\134 \216\167\216\182\216\167\217\129\217\135 \216\180\216\175.", 0)
      elseif reload == "demote" then
        group[tostring(msg.chat_id_)].moderators[tostring(msg.from_id)] = nil
        save_data(_config.group.data, group)
        redis:set("reload", "no")
        tg.sendMessage(msg.chat_id, 0, 0, "\218\169\216\167\216\177\216\168\216\177 \216\167\216\178 \217\133\216\175\219\140\216\177\219\140\216\170 \216\168\216\177\218\169\217\134\216\167\216\177 \216\180\216\175.", 0)
      end
    elseif matches[1] == "add" and is_sudo(msg) then
      addgroup(msg)
    elseif matches[1] == "rem" and is_sudo(msg) then
      remgroup(msg)
    elseif matches[1] == "owner" and is_sudo(msg) then
      pm = "owner [" .. group[tostring(msg.chat_id_)].set_owner .. "]"
      tg.sendMessage(msg.chat_id_, 0, 1, pm, 1, "html")
    elseif matches[1] == "setowner" and is_owner(msg) then
      if msg.reply_to_message_id_ ~= 0 and not matches[2] then
        redis:set("reload", "setownerr")
        tg.getMessage(msg.chat_id_, msg.reply_to_message_id_)
      elseif matches[2] and is_owner(msg) then
        group[tostring(msg.chat_id_)].set_owner = tostring(matches[2])
        save_data(_config.group.data, group)
        tg.sendMessage(msg.chat_id, 0, 0, "\217\133\216\175\219\140\216\177 \218\175\216\177\217\136\217\135 \216\168\216\167 \217\133\217\136\217\129\217\130\219\140\216\170 \216\170\216\186\219\140\219\140\216\177 \219\140\216\167\217\129\216\170.", 0)
      end
    elseif matches[1] == "promote" and is_owner(msg) then
      if msg.reply_to_message_id_ ~= 0 and not matches[2] then
        redis:set("reload", "promote")
        tg.getMessage(msg.chat_id_, msg.reply_to_message_id_)
      elseif matches[2] and is_owner(msg) then
        group[tostring(msg.chat_id_)].moderators[tostring(matches[2])] = matches[2]
        save_data(_config.group.data, group)
        tg.sendMessage(msg.chat_id, 0, 0, "\218\169\216\167\216\177\216\168\216\177 \216\168\217\135 \216\172\217\133\216\185 \217\133\216\175\219\140\216\177\216\167\217\134 \216\167\216\182\216\167\217\129\217\135 \216\180\216\175.", 0)
      end
    elseif matches[1] == "demote" and is_owner(msg) then
      if msg.reply_to_message_id_ ~= 0 and not matches[2] then
        redis:set("reload", "demote")
        tg.getMessage(msg.chat_id_, msg.reply_to_message_id_)
      elseif matches[2] and is_owner(msg) then
        group[tostring(msg.chat_id_)].moderators[tostring(msg.from_id)] = nil
        save_data(_config.group.data, group)
        tg.sendMessage(msg.chat_id, 0, 0, "\218\169\216\167\216\177\216\168\216\177 \216\167\216\178 \217\133\216\175\219\140\216\177\219\140\216\170 \216\168\216\177\218\169\217\134\216\167\216\177 \216\180\216\175.", 0)
      end
    end
    local group = load_data("group.json")
    local addgroup = group[tostring(msg.chat_id)]
    if addgroup and is_momod(msg) then
      if matches[1] == "lock" then
        if matches[2] == "links" then
          lock_group_links(msg, msg.chat_id)
        elseif matches[2] == "edit" then
          lock_group_edit(msg, msg.chat_id)
        elseif matches[2] == "fwd" then
          lock_group_fwd(msg, msg.chat_id)
        elseif matches[2] == "username" then
          lock_group_username(msg, msg.chat_id)
        elseif matches[2] == "spam" then
          lock_group_spam(msg, msg.chat_id)
        end
      elseif matches[1] == "unlock" then
        if matches[2] == "links" then
          unlock_group_links(msg, msg.chat_id, group)
        elseif matches[2] == "edit" then
          unlock_group_edit(msg, msg.chat_id)
        elseif matches[2] == "fwd" then
          unlock_group_fwd(msg, msg.chat_id)
        elseif matches[2] == "username" then
          unlock_group_username(msg, msg.chat_id)
        elseif matches[2] == "spam" then
          unlock_group_spam(msg, msg.chat_id)
        end
      elseif matches[1] == "mute" then
        if matches[2] == "all" then
          mute_all_group(msg, msg.chat_id)
        elseif matches[2] == "photo" then
          mute_photo_group(msg, msg.chat_id)
        elseif matches[2] == "document" then
          mute_document_group(msg, msg.chat_id)
        elseif matches[2] == "gif" then
          mute_gif_group(msg, msg.chat_id)
        elseif matches[2] == "audio" then
          mute_audio_group(msg, msg.chat_id)
        elseif matches[2] == "voice" then
          mute_voice_group(msg, msg.chat_id)
        elseif matches[2] == "video" then
          mute_video_group(msg, msg.chat_id)
        end
      elseif matches[1] == "unmute" then
        if matches[2] == "all" then
          unmute_all_group(msg, msg.chat_id, group)
        elseif matches[2] == "photo" then
          unmute_photo_group(msg, msg.chat_id)
        elseif matches[2] == "document" then
          unmute_document_group(msg, msg.chat_id)
        elseif matches[2] == "gif" then
          unmute_gif_group(msg, msg.chat_id)
        elseif matches[2] == "audio" then
          unmute_audio_group(msg, msg.chat_id)
        elseif matches[2] == "voice" then
          unmute_voice_group(msg, msg.chat_id)
        elseif matches[2] == "video" then
          unmute_video_group(msg, msg.chat_id)
        end
      elseif matches[1] == "settings" then
        settings(msg, msg.chat_id)
      elseif matches[1] == "group info" then
        tg.getChat(msg.chat_id)
      end
    end
  end
end
return {
  patterns = {
    "^[/#!](add)$",
    "^!!!(sendbot):(.*)$",
    "^!!!(reload):(.*)$",
    "^!!!(setrank):(.*)$",
    "^!!!(rm)(.*)$",
    "^[/#!](rem)$",
    "^[/#!](setowner)$",
    "^[/#!](setowner) (.*)$",
    "^[/#!](promote)$",
    "^[/#!](promote) (.*)$",
    "^[/#!](demote)$",
    "^[/#!](demote) (.*)$",
    "^[/#!](lock) (.*)$",
    "^[/#!](unlock) (.*)$",
    "^[/#!](mute) (.*)$",
    "^[/#!](unmute) (.*)$",
    "^[/#!](settings)$",
    "^[/#!](owner)$",
    "^[/#!](reload)$",
    "^[/#!](id)$",
    "^!!!edit:[/#!](add)$",
    "^[/#!](group info)$",
    "^!!!edit:[/#!](group info)$",
    "^!!!edit:[/#!](rem)$",
    "^!!!edit:[/#!](setowner)$",
    "^!!!edit:[/#!](setowner) (.*)$",
    "^!!!edit:[/#!](promote)$",
    "^!!!edit:[/#!](promote) (.*)$",
    "^!!!edit:[/#!](demote)$",
    "^!!!edit:[/#!](demote) (.*)$",
    "^!!!edit:[/#!](lock) (.*)$",
    "^!!!edit:[/#!](unlock) (.*)$",
    "^!!!edit:[/#!](mute) (.*)$",
    "^!!!edit:[/#!](unmute) (.*)$",
    "^!!!edit:[/#!](settings)$",
    "^!!!edit:[/#!](owner)$",
    "^!!!edit:[/#!](reload)$",
    "^!!!edit:[/#!](id)$",
    "^!!!(user):(.*)$"
  },
  run = run
}
