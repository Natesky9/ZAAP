//send all previous sockets the newly connected
show_debug_message("Sending Packet 6")

var sss = argument0

for (i = 0;i < ds_list_size(playerlist);i += 1)
    {
    buffer_seek(bbb,buffer_seek_start,0)
    buffer_write(bbb,buffer_u8,6)
    buffer_write(bbb,buffer_u8,sss)
    
    var get_player = ds_list_find_value(playerlist,i)
    if get_player != sss
        {
        network_send_packet(get_player,bbb,buffer_tell(bbb))
        }
    
    }


