which git >/dev/null 2>&1 || echo "git is not installed"
which docker >/dev/null 2>&1 || echo "docker is not installed"
docker compose --help >/dev/null 2>&1 || echo "docker-compose is not installed"
which fzf >/dev/null 2>&1 || echo "fzf is not installed"
which nvim >/dev/null 2>&1 || echo "nvim is not installed"

