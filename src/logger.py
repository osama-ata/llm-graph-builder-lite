import os
from src.shared.common_fn import get_value_from_env

class CustomLogger:
    def __init__(self):
        # In lite version, GCP logging is disabled to remove dependencies
        self.is_gcp_log_enabled = False
        self.logger = None

    def log_struct(self, message, severity="DEFAULT"):
        # Just print to console in lite version
        print(f"[{severity}] {message}")
