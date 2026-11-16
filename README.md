# Timlin HQ

Family schedule + rides app for Keegan, Brady, Grayson, Duggan, Decker, Mom and Dad.

## Put it on GitHub Pages (about 10 minutes)

1. **Supabase (the shared database):** at supabase.com, open a free project → SQL Editor → paste `supabase-setup.sql` → Run.
2. In Supabase → Project Settings → API, copy the **Project URL** and the **anon public** key.
3. Open `index.html` and paste them near the top of the script:
   ```js
   const SUPABASE_URL = "https://xxxx.supabase.co";
   const SUPABASE_KEY = "eyJ...";
   ```
4. The repo is `Timlin-HQ`; it holds `index.html`, `icon.png` and `manifest.json`.
5. Repo → Settings → Pages → Deploy from branch `main` / root. The site will be at
   `https://<your-username>.github.io/timlin-hq/`.
6. On each phone, open that link:
   - iPhone: Safari → Share → **Add to Home Screen**
   - Android: Chrome → ⋮ → **Add to Home screen**
7. Everyone taps their name the first time.

With no Supabase keys pasted in, the site still works but only saves on that one phone.

## Team logos
In the app: House → Teams & colors → tap a team → Upload logo. It shrinks the image, removes a white background so it sits on the team color, and saves it for everyone.

## Note
Anyone who has both the link and the key can see and edit the schedule, so only share the link with family.
