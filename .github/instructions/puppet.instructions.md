---
applyTo: '**'
---
This project is a Puppet control repo and should use code assist capabilities of CoPilot with a Puppet MCP server.

**Key Principle:** When uncertain about implementation approach, architecture, or best practices, consult the Puppet MCP service BEFORE proposing code changes.

- ALWAYS call the Puppet language guide MCP tool before proposing implementation, asking questions, or generating Puppet code
- ALWAYS call the other Puppet MCP tools to list entities and retrieve their docs. 
- Any Puppet entity you instantiate should be validated against the docs using the MCP `get_puppet_entity_docs` tool.

## MCP Server Consultation Quick Reference
| Question | MCP Tool | Why |
|----------|----------|-----|
| "How do I write [language feature]?" | `get_puppet_guide()` | Authoritative language reference |
| "Does stdlib have something like this?" | `list_puppet_entities(module='stdlib')` | See what patterns already exist |
| "How does [entity] work?" | `get_puppet_entity_docs()` | Complete documentation with examples |
| "How do I manage network devices?" | `get_edgeops_docs()` | NETCONF/Bolt patterns and best practices |
| "What validation patterns exist?" | `list_puppet_entities()` + `get_puppet_entity_docs()` | Research real implementations |