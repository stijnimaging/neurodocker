import pytest

from neurodocker.cli.minify import _prune


def test__prune_fail_outside_docker():
    with pytest.raises(RuntimeError):
        _prune.main(yaml_file="fake", directories_to_prune=["fake-path-never-exists"])
