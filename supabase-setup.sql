-- Ejecutar en Supabase → SQL Editor → Run
create table if not exists public.gift_claims (
  id uuid primary key default gen_random_uuid(),
  gift_id text unique not null,
  guest_name text,
  claimed_at timestamptz not null default now()
);

alter table public.gift_claims enable row level security;

drop policy if exists "Public read gift_claims" on public.gift_claims;
drop policy if exists "Public insert gift_claims" on public.gift_claims;
drop policy if exists "Public delete gift_claims" on public.gift_claims;

create policy "Public read gift_claims"
  on public.gift_claims for select using (true);

create policy "Public insert gift_claims"
  on public.gift_claims for insert with check (true);

create policy "Public delete gift_claims"
  on public.gift_claims for delete using (true);
