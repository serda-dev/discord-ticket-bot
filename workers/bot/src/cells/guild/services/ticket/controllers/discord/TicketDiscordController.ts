import { sql } from "sql-template-tag";
const table = "cached_discord_channels";
const where = sql`channel ->> name = ${"general"}`;
const query = sql`SELECT * FROM ${sql`${table}`} WHERE ${sql`${where}`}`;
const { sql: q, values: p } = query;
cell.sql.exec(q, ...p);
// used like...
discord.cache.channels.find(sql`channel ->> name = ${"general"}`)

// @discord.js/core/http-only
await discord.api.channels.get('id')
// reads cache, miss or uncachable goes through proxy
