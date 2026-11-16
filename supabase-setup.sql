-- Beckstrom HQ: run once in Supabase → SQL Editor → New query → Run
create table if not exists public.hub (
  coll text not null,
  id   text not null,
  data jsonb not null,
  updated_at timestamptz default now(),
  primary key (coll, id)
);

alter table public.hub enable row level security;

-- Family app: anyone with the site's key can read/write. Keep the URL in the family.
create policy "family read"   on public.hub for select using (true);
create policy "family insert" on public.hub for insert with check (true);
create policy "family update" on public.hub for update using (true);
create policy "family delete" on public.hub for delete using (true);

-- Live updates across phones
alter publication supabase_realtime add table public.hub;
