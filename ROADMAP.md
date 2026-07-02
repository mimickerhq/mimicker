# Mimicker Roadmap

This document outlines what's planned for upcoming releases. Have a feature request? Open a [Discussion](https://github.com/mimickerhq/mimicker/discussions).

---

## Released

### v2.2 — CI-ready
- CLI: `serve`, `wait`, `validate`, `report`
- Stub coverage tracking + `/__mimicker__/report` endpoint
- GitHub Actions: [`mimickerhq/mimicker-action`](https://github.com/mimickerhq/mimicker-action)
- Docker image: `ghcr.io/mimickerhq/mimicker`
- GitLab CI component
- MkDocs documentation site

---

## Near-term (v2.3)

- [ ] **GitLab CI component repo** — move `contrib/gitlab-component` to `mimickerhq/mimicker-gitlab`
- [ ] **Response delays** — `delay_ms` field to simulate slow APIs
- [ ] **Conditional responses** — match on request headers or body content
- [ ] **WebSocket stub support** — basic ws:// endpoint mocking

---

## Medium-term (v2.x)

- [ ] **Web UI** — browser dashboard to inspect stubs, hits, and coverage live
- [ ] **OpenAPI import** — generate stubs automatically from a Swagger/OpenAPI spec
- [ ] **Proxy mode** — forward unmatched requests to a real upstream and record them
- [ ] **gRPC support** — stub gRPC services alongside HTTP

---

## Long-term

- [ ] **Multi-service mocking** — run multiple named services from a single config
- [ ] **Replay mode** — record real traffic and replay it as stubs
- [ ] **Plugin API** — extend Mimicker with custom matchers and response generators
