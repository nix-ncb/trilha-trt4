# Trilha TRT4 2026 — site estático

Arquivos: `index.html` (o site), `questoes.js` (1.010 questões) e `pilulas.js` (2.476 pílulas de conhecimento).

## Publicar no Vercel
1. Crie uma conta em vercel.com.
2. Opção rápida: instale a CLI (`npm i -g vercel`), entre nesta pasta e rode `vercel --prod`.
3. Opção pelo site: suba esta pasta para um repositório no GitHub e importe em "Add New > Project". Framework: "Other". Sem comando de build. Output: a própria pasta.

O progresso de cada pessoa fica salvo no navegador dela (localStorage).

## Progresso entre aparelhos
Nesta versão estática o progresso fica no navegador. Para levar ao celular, use "Meu progresso > Copiar código de progresso" e cole no outro aparelho. A versão aberta pelo Claude sincroniza sozinha pela conta.
