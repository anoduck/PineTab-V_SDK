#!/usr/bin/env bash
# vim: set sw=4 sts=4 et ft=sh :
# -*- mode:bash; -*-
# -------------------------------------------------------
# Copyright (C) 2025 by Anoduck, The Anonymous Duck
# -------------------------------------------------------
# https://anoduck.mit-license.org
# -------------------------------------------------------
WRKDIR="$HOME/Sandbox"

podman run --rm -it --env TZ=America/New_York \
  -v "$WRKDIR/PineTab-V_sdk:/usr/src" docker.io/debian:bookworm
