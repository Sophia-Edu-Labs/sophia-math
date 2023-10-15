import os

# Define a default fallback locale
DEFAULT_LOCALE = "de"

# Get the locale from an environment variable. If it is not set, use the default locale.
CURRENT_LOCALE = os.getenv('LOCALE', DEFAULT_LOCALE)
