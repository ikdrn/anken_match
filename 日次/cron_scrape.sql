-- ============================================
-- 📅 日次スクレイピングジョブ Cron 登録
-- ============================================

-- freelance-start
SELECT cron.schedule(
  'daily_scrape_freelance_start',
  '0 12 * * *',
$$
  SELECT net.http_post(
    url := 'https://yhkbewmgnufijsikruio.supabase.co/functions/v1/daily-scrape-jobs',
    headers := jsonb_build_object(
      'Content-Type', 'application/json',
      'Authorization', 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloa2Jld21nbnVmaWpzaWtydWlvIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1ODk2NzQzMSwiZXhwIjoyMDc0NTQzNDMxfQ.DgLf-smYCDdCSyPFjbfrbYE55hF94I2bXdynW8JBC00'
    ),
    body := '{"site":"freelance-start"}'::jsonb
  );
$$
);

-- freelance-hub
SELECT cron.schedule(
  'daily_scrape_freelance_hub',
  '0 12 * * *',
$$
  SELECT net.http_post(
    url := 'https://yhkbewmgnufijsikruio.supabase.co/functions/v1/daily-scrape-jobs',
    headers := jsonb_build_object(
      'Content-Type', 'application/json',
      'Authorization', 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloa2Jld21nbnVmaWpzaWtydWlvIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1ODk2NzQzMSwiZXhwIjoyMDc0NTQzNDMxfQ.DgLf-smYCDdCSyPFjbfrbYE55hF94I2bXdynW8JBC00'
    ),
    body := '{"site":"freelance-hub"}'::jsonb
  );
$$
);

-- lancers
SELECT cron.schedule(
  'daily_scrape_lancers',
  '0 12 * * *',
$$
  SELECT net.http_post(
    url := 'https://yhkbewmgnufijsikruio.supabase.co/functions/v1/daily-scrape-jobs',
    headers := jsonb_build_object(
      'Content-Type', 'application/json',
      'Authorization', 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inloa2Jld21nbnVmaWpzaWtydWlvIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc1ODk2NzQzMSwiZXhwIjoyMDc0NTQzNDMxfQ.DgLf-smYCDdCSyPFjbfrbYE55hF94I2bXdynW8JBC00'
    ),
    body := '{"site":"lancers"}'::jsonb
  );
$$
);