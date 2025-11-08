import logging
from pythonjsonlogger import jsonlogger
import time

logger = logging.getLogger()
logHandler = logging.StreamHandler()
formatter = jsonlogger.JsonFormatter()
logHandler.setFormatter(formatter)
logger.addHandler(logHandler)

while True:
    logger.warning("Ceci est un log de démonstration", extra={"app": "demo", "env": "test"})
    time.sleep(1)
