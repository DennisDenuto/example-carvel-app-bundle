#!/bin/bash

vendir sync
cosign verify-blob -cert .imgpkg/images.crt -signature .imgpkg/images.sig .imgpkg/images.yml
cosign verify-blob -cert config/example-carvel-app/config.crt -signature config/example-carvel-app/config.sig config/example-carvel-app/config.yml
