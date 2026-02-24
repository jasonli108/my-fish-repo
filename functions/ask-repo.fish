
function ask-repo
    echo "📦 Packing project with Repomix (compressing to save tokens)..."
    # --compress reduces token usage by ~70% while keeping core logic
    npx repomix --quiet --parsable-style --compress

    if not test -f repomix-output.xml
        echo "❌ Error: repomix-output.xml not found."
        return 1
    end

    # 1. Read and escape triple quotes to prevent premature SYSTEM block closure
    set -l REPO_CONTENT (cat repomix-output.xml | string replace -a '"""' '\"\"\"' | string collect)

    # 2. Write a physical Modelfile (more reliable than piping for large strings)
    printf "FROM qwen3:latest\n\nPARAMETER num_ctx 8192\nPARAMETER temperature 0.2\n\nSYSTEM \"\"\"\nYou are an expert developer. Use the following XML project context for all answers:\n%s\n\"\"\"" "$REPO_CONTENT" > .Modelfile.tmp

    echo "🤖 Updating Ollama model 'repo-chat'..."
    
    # 3. Use the physical file to create the model
    if ollama create repo-chat -f .Modelfile.tmp
        rm .Modelfile.tmp
        echo "✅ Session started! Type /bye to exit."
        ollama run repo-chat
    else
        echo "❌ Failed to create model. Your project might be exceeding system memory limits."
        rm .Modelfile.tmp
    end
end

