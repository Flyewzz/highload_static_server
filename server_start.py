from main import Server
from handlers.config import read_config


if __name__ == '__main__':
    server = Server(read_config("/etc/httpd.conf"))
    server.server_init()
