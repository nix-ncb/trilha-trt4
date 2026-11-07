-- Tabela de progresso da Trilha TRT4: uma linha por pessoa.
create table if not exists public.progresso (
  user_id uuid primary key references auth.users(id) on delete cascade,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.progresso enable row level security;

-- Cada pessoa só lê, cria, altera e apaga a própria linha.
create policy "progresso: ler o proprio" on public.progresso
  for select to authenticated using (auth.uid() = user_id);
create policy "progresso: criar o proprio" on public.progresso
  for insert to authenticated with check (auth.uid() = user_id);
create policy "progresso: alterar o proprio" on public.progresso
  for update to authenticated using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "progresso: apagar o proprio" on public.progresso
  for delete to authenticated using (auth.uid() = user_id);
