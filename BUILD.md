# Building the Documentation

## Prerequisites

Make sure you have Python and pip installed, and activate your virtual environment if you're using one.

## Installation

Install the required dependencies:

```bash
# If using a virtual environment, activate it first
# source your-venv/bin/activate  # or conda activate your-env

# Install dependencies
pip install -r requirements.txt
```

## Building

Build the HTML documentation:

```bash
make html
```

Or using sphinx-build directly:

```bash
cd docs
sphinx-build -b html . _build/html
```

## Viewing

After building, open `docs/_build/html/index.html` in your browser.

## Troubleshooting

If you encounter errors:

1. **ModuleNotFoundError: Linkify enabled but not installed**
   - This has been fixed by removing the linkify extension from the config

2. **html_static_path entry '_static' does not exist**
   - This has been fixed by setting html_static_path to an empty list

3. **intersphinx_mapping format is deprecated**
   - This has been fixed by updating to the new format

4. **Environment issues**
   - Make sure you're using a virtual environment
   - Try: `python -m venv venv && source venv/bin/activate`

## Clean Build

To clean the build directory:

```bash
make clean
```

## Serve Locally

To serve the documentation locally:

```bash
make serve
```

This will start a local server at http://localhost:8000
