function vi
  # Start the model and tell it to stay loaded (-1)
  curl -s -X POST http://localhost:11434/api/generate -d '{"model": "qwen2.5-coder:latest", "keep_alive": -1, "options": { "num_ctx": 8192 }}' > /dev/null &

  nvim $argv
end
