import os

from robot.api.deco import library


@library(scope="GLOBAL", auto_keywords=False)
class EnvironmentVariables:
    def __init__(self):
        self.environment = os.getenv("TEST_ENV", "qa")
