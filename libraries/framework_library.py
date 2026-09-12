from pathlib import Path

import yaml
from robot.api.deco import keyword, library


@library(scope="GLOBAL")
class FrameworkLibrary:
    """Small Python library for framework-level configuration and utilities."""

    @keyword("Load Environment Config")
    def load_environment_config(self, environment="qa"):
        config_path = Path(__file__).parents[1] / "config" / f"{environment}.yaml"
        if not config_path.exists():
            raise FileNotFoundError(f"Environment config not found: {config_path}")

        with config_path.open(encoding="utf-8") as config_file:
            return yaml.safe_load(config_file)

    @keyword("Build Browser Options")
    def build_browser_options(self, headless=False):
        return {"headless": str(headless).lower() == "true"}
