# Mimicker demo — render with: vhs demo.tape
# Install VHS: brew install vhs

Output demo.gif

Set Shell "bash"
Set FontSize 14
Set Width 900
Set Height 500
Set Theme "Dracula"
Set Padding 20

# Install
Type "pip install mimicker" Sleep 500ms Enter
Sleep 3s

# Show YAML stub
Type "cat stubs.yaml" Enter
Sleep 500ms
Type "routes:" Enter
Type "  - method: GET" Enter
Type "    path: /hello" Enter
Type "    status: 200" Enter
Type "    body:" Enter
Type "      message: Hello from Mimicker!" Enter
Sleep 1s

# Serve
Type "mimicker serve --config stubs.yaml &" Enter
Sleep 2s

# Hit the endpoint
Type "curl -s http://localhost:8080/hello | python3 -m json.tool" Enter
Sleep 1s

# Show coverage report
Type "mimicker report --url http://localhost:8080" Enter
Sleep 1s
