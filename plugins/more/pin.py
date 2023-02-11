from pyrogram import Client, filters
from pyrogram.types import Message
from plugins.helper_functions.admin_check import admin_filter                         

@Client.on_message(filters.command("pin") & admin_filter)
async def pin(_, message: Message):
    if not message.reply_to_message:
        return
    await message.reply_to_message.pin()


@Client.on_message(filters.command("unpin") & admin_filter)             
async def unpin(_, message: Message):
    if not message.reply_to_message:
        return
    await message.reply_to_message.unpin()
