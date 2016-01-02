//packet for host to send to all objects, updating the
//x and y of an object

var sss = argument0
var plax = argument1
var play = argument2

var p = ds_list_size(playerlist)-1

for (i = 0;i <= p;i += 1)
    {
    var get_socket = ds_list_find_value(playerlist,i)
    if get_socket != sss
        {
        buffer_seek(buffer_host,buffer_seek_start,0)
        buffer_write(buffer_host,buffer_u8,11)
        buffer_write(buffer_host,buffer_u8,sss)
        buffer_write(buffer_host,buffer_s32,plax)
        buffer_write(buffer_host,buffer_s32,play)
        
        network_send_packet(get_socket,buffer_host,buffer_tell(buffer_host))
        }
    }
