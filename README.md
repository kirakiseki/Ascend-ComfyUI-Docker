# Ascend-ComfyUI-Docker

Deploy ComfyUI using Docker without Internet access.

## Prerequisites

- ComfyUI source code `assets/ComfyUI-master.zip`
- Essential Python packages whl files `assets/whl/` (download from pypi)

```plain
/assets
├── ComfyUI-master.zip
├── init.sh
└── whl
    ├── alembic-1.16.5-py3-none-any.whl
    ├── av-15.1.0-cp311-cp311-manylinux_2_28_aarch64.whl
    ├── comfyui_embedded_docs-0.2.6-py3-none-any.whl
    ├── comfyui_frontend_package-1.25.11-py3-none-any.whl
    ├── comfyui_workflow_templates-0.1.73-py3-none-any.whl
    ├── greenlet-3.2.4-cp311-cp311-manylinux2014_aarch64.manylinux_2_17_aarch64.whl
    ├── kornia_rs-0.1.9-cp311-cp311-manylinux_2_17_aarch64.manylinux2014_aarch64.whl
    ├── kornia-0.8.1-py2.py3-none-any.whl
    ├── mako-1.3.10-py3-none-any.whl
    ├── pydantic_settings-2.10.1-py3-none-any.whl
    ├── python_dotenv-1.1.1-py3-none-any.whl
    ├── soundfile-0.13.1-py2.py3-none-manylinux_2_28_aarch64.whl
    ├── spandrel-0.4.1-py3-none-any.whl
    ├── sqlalchemy-2.0.43-cp311-cp311-manylinux_2_17_aarch64.manylinux2014_aarch64.whl
    ├── tomli-2.2.1-cp311-cp311-manylinux_2_17_aarch64.manylinux2014_aarch64.whl
    ├── torchaudio-2.1.0-cp311-cp311-manylinux2014_aarch64.whl
    ├── torchsde-0.2.6-py3-none-any.whl
    ├── trampoline-0.1.2-py3-none-any.whl
    └── typing_inspection-0.4.1-py3-none-any.whl
```

## Build Docker Image and Initialize File Structure

```bash
chmod a+x ./build-image.sh
sudo ./build-image.sh
```

Models should be put correspondingly in the `./data/models` directory.

## Run Docker Container

Modify `docker-compose.yml` as needed.

```bash
docker-compose up -d
```
