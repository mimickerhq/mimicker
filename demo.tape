Output demo.gif

Set Shell "bash"
Set FontSize 14
Set Width 1200
Set Height 600
Set Theme "Dracula"
Set Padding 20
Set TypingSpeed 50ms

# Install mimicker
Type "pip install mimicker --quiet" Enter
Sleep 4s

# Write a stubs file
Type "cat > stubs.yaml << 'EOF'" Enter
Sleep 200ms
Type "routes:" Enter
Type "  - method: GET" Enter
Type "    path: /hello/world" Enter
Type "    status: 200" Enter
Type "    body:" Enter
Type "      message: Hello from Mimicker!" Enter
Type "EOF" Enter
Sleep 1s

# Start the server in the background
Type "mimicker serve --config stubs.yaml &" Enter
Sleep 3s

# Hit the endpoint
Type "curl -s http://localhost:8080/hello/world" Enter
Sleep 2s

# Show stub coverage report
Type "mimicker report --url http://localhost:8080" Enter
Sleep 3s
