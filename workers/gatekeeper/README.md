# Gatekeeper

Gateway sessions/connections are held by a separate (mostly ingress) proxy worker.
The parition is because

1. The same worker could be used by many bots
2. Outbound connections prevent Durable Objects from hibernating which would get very expensive
    The gatekeeper worker can run on [celld](https://celld.dev/) cheaply while the rest of the system runs on Cloudflare.
