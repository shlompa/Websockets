import asyncio
import websockets
from myWebsockets import quotes

start_server = websockets.serve(quotes.generator,'0.0.0.0',1337)
asyncio.get_event_loop().run_until_complete(start_server)
asyncio.get_event_loop().run_forever()





