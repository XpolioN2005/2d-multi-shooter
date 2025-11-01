extends Node

const SERVER_PORt = 8080

func  create_server():
    var enet_peer: ENetMultiplayerPeer = ENetMultiplayerPeer.new()
    enet_peer.create_server(SERVER_PORt)
    get_tree().get_multiplayer().multiplayer_peer = enet_peer
    print("LOG: server created")

func create_clinet(host_ip: String = "localhost", host_port = SERVER_PORt):
    var enet_peer: ENetMultiplayerPeer =  ENetMultiplayerPeer.new()
    enet_peer.create_client(host_ip,host_port)
    get_tree().get_multiplayer().multiplayer_peer = enet_peer
    print("LOG: clinet created")

