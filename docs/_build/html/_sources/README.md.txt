# Documentation

This directory contains the Sphinx documentation for Awesome Fitness.

## Building the Documentation

### Prerequisites

Install the required dependencies:

```bash
pip install -r requirements.txt
```

### Building HTML Documentation

From the project root directory:

```bash
make html
```

Or using sphinx-build directly:

```bash
cd docs
sphinx-build -b html . _build/html
```

### Viewing the Documentation

After building, you can view the documentation by opening `docs/_build/html/index.html` in your browser.

### Serving Locally

To serve the documentation locally:

```bash
make serve
```

This will start a local server at http://localhost:8000

### Cleaning Build Files

To clean the build directory:

```bash
make clean
```

## Documentation Structure

- `conf.py` - Sphinx configuration file
- `index.rst` - Main documentation page
- `overview.rst` - Project overview
- `contributing.rst` - Contribution guidelines
- `_static/` - Static files (CSS, images, etc.)
- `_templates/` - Custom templates
- `_build/` - Generated documentation (ignored by git)

## Theme

This documentation uses the Read the Docs theme (`sphinx_rtd_theme`), which provides a clean, professional appearance similar to the OCS2 documentation.

## Contributing to Documentation

1. Edit the `.rst` files in this directory
2. Build the documentation to check for errors
3. Submit a pull request with your changes

For more information about Sphinx, see the [Sphinx documentation](https://www.sphinx-doc.org/).
