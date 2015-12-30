//packet for host to send to all objects, updating the
//x and y of an object

var socket = argument0
var plax = argument1
var play = argument2

var p = ds_list_size(playerlist)

for (i = 0;i < p;i += 1)
    {
    pl_socket = ds_list_find_value(playerlist,i)
    if ds_map_find_value(playerobjects,socket).sock != pl_socket
        {
        buffer_seek(buffer_host,buffer_seek_start,0)
        buffer_write(buffer_host,buffer_u8,11)
        buffer_write(buffer_host,buffer_u32,plsocket)
        buffer_write(buffer_host,buffer_s32,plax)
        buffer_write(buffer_host,buffer_s32,play)
        
        network_send_packet(pl_socket,buffer_host,buffer_tell(buffer_host))
        }
    }